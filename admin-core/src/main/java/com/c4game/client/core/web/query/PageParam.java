package com.c4game.client.core.web.query;

import com.c4game.client.core.annotation.Query;
import com.fasterxml.jackson.annotation.JsonIgnore;

import org.beetl.sql.core.engine.PageQuery;

import java.lang.reflect.Field;

/**
 * 子类继承此类获得翻页功能
 * @author lijiazhi
 */
public class PageParam {
    private Integer page = null;
    private Integer limit = null;

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    @JsonIgnore
    public PageQuery getPageQuery() {
        Field[] fs =this.getClass().getDeclaredFields();
        for(Field f:fs){
            Query query = f.getAnnotation(Query.class);
            if(query==null){
                continue ;
            }
            if (query.fuzzy()) {
                try {
                    if ( f.getType() == String.class) {
                        f.setAccessible(true);
                        Object o = f.get(this);
                        if (o != null && !o.toString().isEmpty()) {
                            f.set(this,"%"+o.toString()+"%");
                        }
                    }
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                }
            }
        }
        PageQuery query = new PageQuery();
        query.setParas(this);
        if (page != null) {
            query.setPageNumber(page);
            query.setPageSize(limit);
        }
        return query;
    }

	public Integer getLimit() {
		return limit;
	}

	public void setLimit(Integer limit) {
		this.limit = limit;
	}


}
