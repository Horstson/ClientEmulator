package com.c4game.client.core.rbac.da;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
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
 * 同公司下所有
 * @author lijiazhi
 *
 */
@Component
public class SameCompanyAllDataAccess implements DataAccess {
	
	@Autowired
	CorePlatformService platformService;

	@Override
	public DataAccessResullt getOrg(Long userId, Long orgId) {
		DataAccessResullt ret = new DataAccessResullt();
		ret.setStatus(AccessType.OnlyOrg);
		OrgItem item = platformService.getCurrentOrgItem();
		OrgItem company = item.findParentOrgItem(DefaultDataAccessFactory.COMPANY_TYPE);
		
		if(company==null){
			ret.setOrgIds(Collections.EMPTY_LIST);
			return ret;
		}
		List<OrgItem> all = company.findAllChildOrgItem(null,DefaultDataAccessFactory.COMPANY_TYPE);
		all.add(company);
		List<Long> list = new ArrayList<Long>(all.size());
		for(OrgItem org:all){
			list.add(org.getId());
		}
		ret.setOrgIds(list);
		return ret;
		
	}

	@Override
	public String getName() {
		return "查看同公司(不含子公司)";
	}

	@Override
	public Integer getType() {
		return 2;
	}

}
