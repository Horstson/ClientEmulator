package com.c4game.client.core.util.beetl;

import org.beetl.core.Context;
import org.beetl.core.Function;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.c4game.client.core.rbac.tree.OrgItem;
import com.c4game.client.core.service.CorePlatformService;

import java.util.List;

/**
 * 通过orgId获取orgName,从缓存中获取
 * @author xiandafu
 *
 */
@Component
public class OrgFunction implements Function {

	@Autowired
	CorePlatformService platFormService;
	
	
	public Object call(Object[] paras, Context ctx) {
		OrgItem tree = platFormService.buildOrg();
		OrgItem item = tree.findChild((Long)paras[0]);
		return item.getName();
		
	}
	
	

}
