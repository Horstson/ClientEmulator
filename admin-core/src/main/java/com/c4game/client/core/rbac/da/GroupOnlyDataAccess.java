package com.c4game.client.core.rbac.da;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.c4game.client.core.entity.CoreOrg;
import com.c4game.client.core.rbac.AccessType;
import com.c4game.client.core.rbac.DataAccess;
import com.c4game.client.core.rbac.DataAccessResullt;
import com.c4game.client.core.rbac.tree.OrgItem;
import com.c4game.client.core.service.CorePlatformService;
/**
 * 集团公司所有，但不包含集团下的公司,仅仅集团职能部门
 * @author lijiazhi
 *
 */
@Component
public class GroupOnlyDataAccess implements DataAccess {
	
	@Autowired
	CorePlatformService platformService;

	@Override
	public DataAccessResullt getOrg(Long userId, Long orgId) {
		OrgItem root = platformService.buildOrg();
		OrgItem company  = root.findChild(orgId);
		OrgItem group = root.findParentOrgItem(DefaultDataAccessFactory.GROUP_TYPE);
		//排除集团下的所有公司
		List<OrgItem> all = group.findAllChildOrgItem(null,DefaultDataAccessFactory.COMPANY_TYPE);
		List<Long> list = new ArrayList<Long>(all.size());
		for(OrgItem org:all){
			list.add(org.getId());
		}
		
		DataAccessResullt ret = new DataAccessResullt();
		ret.setStatus(AccessType.OnlyOrg);
		ret.setOrgIds(list);
		return ret;
		
	}

	@Override
	public String getName() {
		return "仅集团部门";
	}

	@Override
	public Integer getType() {
		return 8;
	}

}
