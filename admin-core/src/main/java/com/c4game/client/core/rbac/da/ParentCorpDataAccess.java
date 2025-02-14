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
 * 母公司所有
 * @author lijiazhi
 *
 */
@Component
public class ParentCorpDataAccess implements DataAccess {
	
	@Autowired
	CorePlatformService platformService;

	@Override
	public DataAccessResullt getOrg(Long userId, Long orgId) {
		OrgItem root = platformService.buildOrg();
		OrgItem company = root.findAllChildOrgItem(DefaultDataAccessFactory.PARENT_CORP_TYPE).get(0);
		List<OrgItem> all = company.findAllChildOrgItem();
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
		return "母公司";
	}

	@Override
	public Integer getType() {
		return 7;
	}

}
