package com.c4game.client.console.service;

import org.beetl.sql.core.engine.PageQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.c4game.client.console.dao.AuditConsoleDao;
import com.c4game.client.core.entity.CoreAudit;
import com.c4game.client.core.service.CoreBaseService;

@Service
@Transactional
public class AuditConsoleService extends CoreBaseService<CoreAudit> {

	@Autowired
	AuditConsoleDao auditConsoleDao;

	/**
	 * 根据条件查询
	 *
	 * @param query
	 */
	public void queryByCondtion(PageQuery<CoreAudit> query) {
		PageQuery<CoreAudit> ret = auditConsoleDao.queryByCondtion(query);
		queryListAfter(ret.getList());
	}

	

}
