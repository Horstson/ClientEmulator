package com.c4game.client.console.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.catalina.User;
import org.apache.commons.lang3.StringUtils;
import org.beetl.sql.core.engine.PageQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.c4game.client.console.dao.UserConsoleDao;
import com.c4game.client.console.exception.DeletedException;
import com.c4game.client.console.exception.NoResourceException;
import com.c4game.client.console.web.dto.UserExcelExportData;
import com.c4game.client.console.web.query.UserRoleQuery;
import com.c4game.client.core.conf.PasswordConfig.PasswordEncryptService;
import com.c4game.client.core.entity.CoreDict;
import com.c4game.client.core.entity.CoreUser;
import com.c4game.client.core.entity.CoreUserRole;
import com.c4game.client.core.file.FileService;
import com.c4game.client.core.rbac.tree.OrgItem;
import com.c4game.client.core.service.CoreBaseService;
import com.c4game.client.core.service.CoreDictService;
import com.c4game.client.core.service.CorePlatformService;
import com.c4game.client.core.util.PlatformException;
import com.c4game.client.core.util.enums.CoreDictType;
import com.c4game.client.core.util.enums.DelFlagEnum;
import com.c4game.client.core.util.enums.GeneralStateEnum;

@Service
@Transactional
public class UserConsoleService extends CoreBaseService<CoreUser> {

	@Autowired
	UserConsoleDao userDao;
	
	
	@Autowired
    FileService fileService;

	@Autowired
	PasswordEncryptService passwordEncryptService;
	@Autowired
	CoreDictService dictService;

	
	@Autowired
	CorePlatformService platformService;
	/**
	 * 根据条件查询
	 *
	 * @param query
	 */
	public void queryByCondtion(PageQuery<CoreUser> query) {
		PageQuery<CoreUser> ret = userDao.queryByCondtion(query);
		queryListAfter(ret.getList());
	}

	/**
	 * 插入一条用户数据
	 *
	 * @param user
	 */
	public void saveUser(CoreUser user) {
		CoreUser query = new CoreUser();
		query.setCode(user.getCode());
		CoreUser dbUser = userDao.templateOne(query);
		if (dbUser != null) {
			throw new PlatformException("保存用户信息失败,用户已经存在");
		}
		user.setCreateTime(new Date());
		user.setState(GeneralStateEnum.ENABLE.getValue());
		user.setPassword(passwordEncryptService.password(user.getPassword()));
		user.setDelFlag(DelFlagEnum.NORMAL.getValue());
		userDao.insert(user, true);
		if(StringUtils.isNotEmpty(user.getAttachmentId())){
		    //更新附件详细信息,关联到这个用户
		    fileService.updateFile(user.getAttachmentId(), User.class.getSimpleName(), String.valueOf(user.getId()));
		}
		

	}

	/**
	 * 根据用户id查询一条数据
	 *
	 * @param userId
	 */
	public CoreUser queryUserById(Long userId) {
		return userDao.unique(userId);
	}

	/**
	 * 更新用户 只更新不为空的字段
	 *
	 * @param user
	 * @return
	 */
	public int updateSysUser(CoreUser user) {
		return userDao.updateTemplateById(user);
	}

	/**
	 * 删除用户
	 *
	 * @param userId
	 *            用户id
	 */
	public void delSysUser(Long userId) {
		CoreUser user = queryUserById(userId);
		if (user == null) {
			throw new NoResourceException("用户不存在!");
		}
		if (user.getDelFlag() == DelFlagEnum.DELETED.getValue()) {
			throw new DeletedException("用户已被删除!");
		}
		user = new CoreUser();
		user.setId(userId);
		user.setDelFlag(DelFlagEnum.DELETED.getValue());
		userDao.updateTemplateById(user);
	}

	/**
	 * 批量删除用户 <br/>
	 * 软删除 标记用户删除状态
	 *
	 * @param userIds
	 *            用户id
	 */
	public void batchDelSysUser(List<Long> userIds) {
		try {
			userDao.batchDelUserByIds(userIds);
		} catch (Exception e) {
			throw new PlatformException("批量删除用户失败", e);
		}
	}

	/**
	 * 批量停用用户 <br/>
	 * 标记用户状态 停用
	 *
	 * @param userIds
	 *            用户id
	 */
	public void batchUpdateUserState(List<Long> userIds, GeneralStateEnum stateEnum) {
		userDao.batchUpdateUserState(userIds, stateEnum);
	}

	/**
	 * 重置用户密码
	 *
	 * @param uId
	 * @param password
	 */
	public int resetPassword(Long id, String password) {
		CoreUser user = new CoreUser();
		user.setId(id);
		user.setPassword(passwordEncryptService.password(password));
		user.setUpdateTime(new Date());
		return userDao.updateTemplateById(user);
	}

	public List<CoreUserRole> getUserRoles(UserRoleQuery roleQuery) {
		return userDao.queryUserRole(roleQuery.getUserId(), roleQuery.getOrgId(), roleQuery.getRoleId());
	}

	public void deleteUserRoles(List<Long> ids) {
		// 考虑到这个操作较少使用，就不做批处理优化了
		for (Long id : ids) {
			sqlManager.deleteById(CoreUserRole.class, id);
		}

	}

	public void saveUserRole(CoreUserRole userRole) {

		long queryCount = sqlManager.templateCount(userRole);

		if (queryCount > 0) {
			throw new PlatformException("已存在用户角色关系");
		}
		sqlManager.insert(userRole);
	}
	
	public List<UserExcelExportData> queryExcel(PageQuery<CoreUser> query) {
		PageQuery<CoreUser> ret = userDao.queryByCondtion(query);
		List<CoreUser> list = ret.getList();
		OrgItem orgRoot = platformService.buildOrg();
		List<UserExcelExportData> items = new ArrayList<>();
		for(CoreUser user:list) {
			UserExcelExportData userItem = new UserExcelExportData();
			userItem.setCode(user.getCode());
			userItem.setId(user.getId());
			userItem.setName(user.getName());
			CoreDict dict = dictService.findCoreDict(CoreDictType.USER_STATE,user.getState());
			userItem.setStateText(dict.getName());
			
			if(StringUtils.isNotEmpty(user.getJobType1())){
				dict = dictService.findCoreDict("job_type",user.getJobType1());
				userItem.setJobType1Text(dict.getName());
			}
			
			String orgName = orgRoot.findChild(user.getOrgId()).getName();
			userItem.setOrgText(orgName);
			items.add(userItem);
			
		}
		return items;
		
	}

}
