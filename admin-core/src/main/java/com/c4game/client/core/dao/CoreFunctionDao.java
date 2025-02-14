package com.c4game.client.core.dao;

import org.beetl.sql.core.annotatoin.Param;
import org.beetl.sql.core.annotatoin.Sql;
import org.beetl.sql.core.annotatoin.SqlResource;
import org.beetl.sql.core.mapper.BaseMapper;

import com.c4game.client.core.entity.CoreFunction;

@SqlResource("core.coreFunction")
public interface CoreFunctionDao extends BaseMapper<CoreFunction> {
    @Sql("select * from core_function where code = ?")
    CoreFunction getFunctionByCode(@Param(value = "code") String code);
}
