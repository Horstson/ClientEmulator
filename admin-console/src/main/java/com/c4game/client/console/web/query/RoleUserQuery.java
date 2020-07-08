package com.c4game.client.console.web.query;

import com.c4game.client.core.annotation.Query;
import com.c4game.client.core.web.query.PageParam;

/**
 * 描述:  角色李的用户列表
 */
public class RoleUserQuery extends PageParam {
    @Query(name = "编码", display = true)
    private String userCode;
    @Query(name = "名称", display = true)
    private String userName;
   
    private Long roleId;

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Long getRoleId() {
		return roleId;
	}

	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}


  


}
