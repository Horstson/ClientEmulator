package com.c4game.client.console.dao;

import org.beetl.sql.core.annotatoin.SqlResource;
import org.beetl.sql.core.engine.PageQuery;
import org.beetl.sql.core.mapper.BaseMapper;

import com.c4game.client.core.entity.CoreAudit;

@SqlResource("console.audit")
public interface AuditConsoleDao extends BaseMapper<CoreAudit> {

    PageQuery<CoreAudit> queryByCondtion(PageQuery<CoreAudit> query);

}

