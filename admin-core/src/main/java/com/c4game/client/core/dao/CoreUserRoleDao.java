package com.c4game.client.core.dao;

import org.beetl.sql.core.annotatoin.SqlResource;
import org.beetl.sql.core.engine.PageQuery;
import org.beetl.sql.core.mapper.BaseMapper;

import com.c4game.client.core.entity.CoreUserRole;

@SqlResource("core.coresUserRole")
public interface CoreUserRoleDao extends BaseMapper<CoreUserRole> {


}
