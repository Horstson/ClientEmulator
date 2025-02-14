package com.c4game.client.console.dao;

import java.util.List;

import org.beetl.sql.core.annotatoin.SqlResource;
import org.beetl.sql.core.engine.PageQuery;
import org.beetl.sql.core.mapper.BaseMapper;

import com.c4game.client.core.entity.CoreDict;

/**
 * CoreDict Dao
 */
@SqlResource("console.dict")
public interface DictConsoleDao extends BaseMapper<CoreDict>{
    public PageQuery<CoreDict> queryByCondition(PageQuery<?> query);
    public void batchDelCoreDictByIds( List<Long> ids);
}