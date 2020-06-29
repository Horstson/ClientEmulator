package com.c4game.client.core.util.beetl;

import org.beetl.core.Context;
import org.beetl.core.Function;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.c4game.client.core.rbac.tree.OrgItem;
import com.c4game.client.core.service.CoreRoleService;

/**
 * 获取系统的所有角色列表
 * @author xiandafu
 *
 */
@Component
public class RoleFunction implements Function {

	@Autowired
	CoreRoleService  coreRoleService;
	
	
	public Object call(Object[] paras, Context ctx) {
		
		String type = null;
		if(paras.length!=0) {
			type = (String)paras[0];
		}
		return coreRoleService.getAllRoles(type);
		
	}
	
	

}
