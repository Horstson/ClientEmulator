package com.c4game.client.console.web.query;

import com.c4game.client.core.annotation.Query;
import com.c4game.client.core.util.enums.CoreDictType;
import com.c4game.client.core.web.query.PageParam;

import java.util.Date;
/**
 *CmsBlog查询
 */
public class CmsBlogQuery extends PageParam {
    @Query(name = "id", display = true)
    private Integer id;
    public Integer getId(){
        return  id;
    }
    public void setId(Integer id ){
        this.id = id;
    }
 
}
