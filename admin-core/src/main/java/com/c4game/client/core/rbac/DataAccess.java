package com.c4game.client.core.rbac;

import com.c4game.client.core.service.CorePlatformService;

/**
 * 数据权限接口类
 * @author Administrator
 *
 */
public interface DataAccess {
	 DataAccessResullt getOrg(Long userId,Long orgId );
	 String getName();
	 Integer getType();
}
