package com.ruoyi.system.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.TTechRoute;
import com.ruoyi.system.service.ITTechRouteService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 工艺路线信息Controller
 * 
 * @author ruoyi
 * @date 2023-03-12
 */
@Controller
@RequestMapping("/system/route")
public class TTechRouteController extends BaseController
{
    private String prefix = "system/route";

    @Autowired
    private ITTechRouteService tTechRouteService;

    @RequiresPermissions("system:route:view")
    @GetMapping()
    public String route()
    {
        return prefix + "/route";
    }

    /**
     * 查询工艺路线信息列表
     */
    @RequiresPermissions("system:route:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TTechRoute tTechRoute)
    {
        startPage();
        List<TTechRoute> list = tTechRouteService.selectTTechRouteList(tTechRoute);
        return getDataTable(list);
    }

    /**
     * 导出工艺路线信息列表
     */
    @RequiresPermissions("system:route:export")
    @Log(title = "工艺路线信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TTechRoute tTechRoute)
    {
        List<TTechRoute> list = tTechRouteService.selectTTechRouteList(tTechRoute);
        ExcelUtil<TTechRoute> util = new ExcelUtil<TTechRoute>(TTechRoute.class);
        return util.exportExcel(list, "工艺路线信息数据");
    }

    /**
     * 新增工艺路线信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存工艺路线信息
     */
    @RequiresPermissions("system:route:add")
    @Log(title = "工艺路线信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TTechRoute tTechRoute)
    {
        return toAjax(tTechRouteService.insertTTechRoute(tTechRoute));
    }

    /**
     * 修改工艺路线信息
     */
    @RequiresPermissions("system:route:edit")
    @GetMapping("/edit/{routeId}")
    public String edit(@PathVariable("routeId") Long routeId, ModelMap mmap)
    {
        TTechRoute tTechRoute = tTechRouteService.selectTTechRouteByRouteId(routeId);
        mmap.put("tTechRoute", tTechRoute);
        return prefix + "/edit";
    }

    /**
     * 修改保存工艺路线信息
     */
    @RequiresPermissions("system:route:edit")
    @Log(title = "工艺路线信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TTechRoute tTechRoute)
    {
        return toAjax(tTechRouteService.updateTTechRoute(tTechRoute));
    }

    /**
     * 删除工艺路线信息
     */
    @RequiresPermissions("system:route:remove")
    @Log(title = "工艺路线信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tTechRouteService.deleteTTechRouteByRouteIds(ids));
    }
}
