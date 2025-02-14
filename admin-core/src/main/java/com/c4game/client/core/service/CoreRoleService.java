package com.c4game.client.core.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.c4game.client.core.dao.CoreRoleDao;
import com.c4game.client.core.entity.CoreRole;

/**
 * 描述: 字典 service，包含常规字典和级联字典的操作。
 * @author : xiandafu
 */
@Service
@Transactional
public class CoreRoleService extends CoreBaseService<CoreRole> {

    private static final Logger LOGGER = LoggerFactory.getLogger(CoreRoleService.class);

    @Autowired
    private CoreRoleDao roleDao;
    
    
    public List<CoreRole> getAllRoles(String type){
    	CoreRole template = new CoreRole();
    	template.setType(type);
    	return roleDao.template(template);
    }
   

    
    
  
}
