package com.c4game.client.console.service;

import java.util.ArrayList;
import java.util.List;

import org.beetl.sql.core.engine.PageQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.c4game.client.console.dao.MenuConsoleDao;
import com.c4game.client.core.dao.CoreRoleMenuDao;
import com.c4game.client.core.entity.CoreMenu;
import com.c4game.client.core.rbac.tree.MenuItem;
import com.c4game.client.core.service.CoreBaseService;
import com.c4game.client.core.service.CorePlatformService;
import com.c4game.client.core.util.PlatformException;

@Service
@Transactional
public class MenuConsoleService extends CoreBaseService<CoreMenu> {

    @Autowired
    MenuConsoleDao menuDao;
    @Autowired
    CoreRoleMenuDao roleMenuDao;

    @Autowired
    CorePlatformService platformService;

    public void queryByCondtion(PageQuery<CoreMenu> query) {
        menuDao.queryByCondtion(query);
        queryListAfter(query.getList());
    }

    public Long saveMenu(CoreMenu menu) {
        CoreMenu query = new CoreMenu();
        query.setCode(menu.getCode());
        long queryCount = menuDao.templateCount(query);
        if (queryCount > 0) {
            throw new PlatformException("菜单编码已存在");
        }
        menuDao.insert(menu, true);
        platformService.clearMenuCache();
        return menu.getId();
    }

    public void deleteMenu(Long menuId) {
        deleteMenuId(menuId);
    }

    public void batchDeleteMenuId(List<Long> menuIds) {
        for (Long id : menuIds) {
            deleteMenuId(id);
        }
        platformService.clearMenuCache();
    }
    
    public void updateMenu(CoreMenu menu) {
        menuDao.updateById(menu);
        platformService.clearMenuCache();
    }

    public CoreMenu getMenu(Long menuId) {
        CoreMenu menu = menuDao.unique(menuId);
        platformService.clearMenuCache();
        return menu;
    }


    private void deleteMenuId(Long menuId) {
        MenuItem root = platformService.buildMenu();
        MenuItem fun = root.findChild(menuId);
        List<MenuItem> all = fun.findAllItem();
        //也删除自身
        all.add(fun);
        realDeleteMenu(all);
    }

    private void realDeleteMenu(List<MenuItem> all) {
        List<Long> ids = new ArrayList<>(all.size());
        for (MenuItem item : all) {
            ids.add(item.getId());
            this.menuDao.deleteById(item.getId());
        }
        //删除角色和菜单的关系
        roleMenuDao.deleteRoleMenu(ids);

    }
}
