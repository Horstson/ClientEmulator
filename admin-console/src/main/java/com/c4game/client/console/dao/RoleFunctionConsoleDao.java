package com.c4game.client.console.dao;

import java.util.List;

import org.beetl.sql.core.annotatoin.Param;
import org.beetl.sql.core.annotatoin.SqlResource;
import org.beetl.sql.core.mapper.BaseMapper;

import com.c4game.client.console.web.dto.RoleDataAccessFunction;
import com.ibeetl.admin.core.entity.CoreRoleFunction;

@SqlResource("console.roleFunction")
public interface RoleFunctionConsoleDao extends BaseMapper<CoreRoleFunction> {


    void deleteRoleFunction(List<Long> ids);

    List<Long> getFunctionIdByRole(Long roleId);

    List<RoleDataAccessFunction> getQueryFunctionAndRoleData(Long roleId);


}
