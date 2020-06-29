package com.c4game.client.core.util;

import java.util.ArrayList;
import java.util.List;

import com.c4game.client.core.entity.CoreOrg;
import com.c4game.client.core.rbac.tree.OrgItem;

public class OrgBuildUtil {
	private  OrgBuildUtil(){
		
	}
	
	
	public static void buildTreeNode(OrgItem parent,List<CoreOrg> list){
		
	
		
		long id = parent.getId();
		List<CoreOrg> dels = new ArrayList<>();
		for(CoreOrg sysOrg:list){
			if(sysOrg.getParentOrgId()!=null&&sysOrg.getParentOrgId()==id){
				OrgItem item = new OrgItem(sysOrg);
				item.setParent(parent);
				dels.add(sysOrg);
			}
		}
		list.removeAll(dels);
		
		if(list.isEmpty()){
			return ;
		}
		for(OrgItem child:parent.getChildren()){
			buildTreeNode(child,list);
		}
		
	}
}
