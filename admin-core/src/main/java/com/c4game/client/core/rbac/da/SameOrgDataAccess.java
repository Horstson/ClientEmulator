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
 * 同机构
 * @author lijiazhi
 *
 */
@Component
public class SameOrgDataAccess implements DataAccess {
	
	@Autowired
	CorePlatformService platformService;

	@Override
	public DataAccessResullt getOrg(Long userId, Long orgId) {
		DataAccessResullt ret = new DataAccessResullt();
		ret.setStatus(AccessType.OnlyOrg);
		ret.setOrgIds(Arrays.asList(orgId));
		return ret;
		
	}

	@Override
	public String getName() {
		return "同结构";
	}

	@Override
	public Integer getType() {
		return 3;
	}

}
