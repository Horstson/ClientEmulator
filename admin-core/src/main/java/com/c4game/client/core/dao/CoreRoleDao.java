package com.c4game.client.core.dao;

import org.beetl.sql.core.annotatoin.Param;
import org.beetl.sql.core.annotatoin.SqlResource;
import org.beetl.sql.core.engine.PageQuery;
import org.beetl.sql.core.mapper.BaseMapper;

import com.c4game.client.core.entity.CoreRole;

import java.util.List;

@SqlResource("core.coreRole")
public interface CoreRoleDao extends BaseMapper<CoreRole> {



}
