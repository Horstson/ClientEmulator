package com.c4game.client.console.web;


import java.util.List;
import java.util.Map;

import org.beetl.sql.core.engine.PageQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.c4game.client.console.service.AuditConsoleService;
import com.c4game.client.console.web.query.AuditQuery;
import com.c4game.client.core.annotation.Function;
import com.c4game.client.core.annotation.Query;
import com.c4game.client.core.entity.CoreAudit;
import com.c4game.client.core.util.AnnotationUtil;
import com.c4game.client.core.web.JsonResult;
/**
 * 用户管理接口
 * @author xiandafu
 *
 */
@Controller
public class AuditConsoleController {
//	private  final Log log  = LogFactory.getLog(this.getClass());
    private static final String MODEL = "/admin/audit";

    @Autowired
    AuditConsoleService auditConsoleService;
    
  
   /*页面*/
    
    @GetMapping(MODEL + "/index.do")
    @Function("trace")
    public ModelAndView index() {
		ModelAndView view = new ModelAndView("/admin/audit/index.html");
		view.addObject("search", AuditQuery.class.getName());
        return view;
    }
    
    
    /*Json*/

    @PostMapping(MODEL + "/view.json")
    @ResponseBody
    @Function("trace")
    public JsonResult<CoreAudit> view(Long id) {
    		CoreAudit audit = auditConsoleService.queryById(id);
        return JsonResult.success(audit);
    }
    
    

    @RequestMapping(MODEL + "/list.json")
    @Function("trace")
    @ResponseBody
    public JsonResult<PageQuery<CoreAudit>> list(AuditQuery condtion) {
    	@SuppressWarnings("unchecked")
		PageQuery<CoreAudit> page = condtion.getPageQuery();
        auditConsoleService.queryByCondtion(page);
        return JsonResult.success(page);
    }
    
    
    @PostMapping(MODEL + "/list/condition.json")
    @Function("trace")
    @ResponseBody
    public JsonResult<List<Map<String, Object>>> listCondtion() {
    		List<Map<String, Object>> list = AnnotationUtil.getInstance().getAnnotations(Query.class, AuditQuery.class);
    		return  JsonResult.success(list);
    }
}