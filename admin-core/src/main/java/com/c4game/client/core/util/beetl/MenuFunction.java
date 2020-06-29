package com.c4game.client.core.util.beetl;

import org.beetl.core.Context;
import org.beetl.core.Function;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.c4game.client.core.rbac.tree.MenuItem;
import com.c4game.client.core.service.CorePlatformService;

/**
 * 通过menuId获取menuName,从缓存中获取
 */
@Component
public class MenuFunction implements Function {

	@Autowired
	CorePlatformService platFormService;
	
	
	public Object call(Object[] paras, Context ctx) {
		MenuItem tree = platFormService.buildMenu();
		MenuItem item = tree.findChild((Long)paras[0]);
		return item.getName();
		
	}
	
	

}
