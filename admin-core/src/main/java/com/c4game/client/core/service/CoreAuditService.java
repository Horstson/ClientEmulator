package com.c4game.client.core.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.c4game.client.core.dao.CoreAuditDao;
import com.c4game.client.core.entity.CoreAudit;

@Service
@Transactional
public class CoreAuditService extends CoreBaseService<CoreAudit> {
    
    @Autowired
    private CoreAuditDao sysAuditDao;
    

}