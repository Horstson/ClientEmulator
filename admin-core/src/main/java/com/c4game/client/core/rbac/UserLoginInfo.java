package com.c4game.client.core.rbac;

import java.util.ArrayList;
import java.util.List;

import com.c4game.client.core.entity.CoreOrg;
import com.c4game.client.core.entity.CoreUser;
import com.fasterxml.jackson.annotation.JsonView;

public class UserLoginInfo {
	//用户所在机构
	List<CoreOrg> orgs = new ArrayList<CoreOrg>();
	//用户信息
	CoreUser user;
	//用户默认登录机构
	CoreOrg currentOrg = null;
	public List<CoreOrg> getOrgs() {
		return orgs;
	}
	public void setOrgs(List<CoreOrg> orgs) {
		this.orgs = orgs;
	}
	public CoreUser getUser() {
		return user;
	}
	public void setUser(CoreUser user) {
		this.user = user;
	}
	public CoreOrg getCurrentOrg() {
		return currentOrg;
	}
	public void setCurrentOrg(CoreOrg currentOrg) {
		this.currentOrg = currentOrg;
	}
	
}
