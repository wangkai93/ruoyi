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
import com.ruoyi.system.domain.TMaterialInfo;
import com.ruoyi.system.service.ITMaterialInfoService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 原材料信息Controller
 * 
 * @author ruoyi
 * @date 2023-03-12
 */
@Controller
@RequestMapping("/system/info")
public class TMaterialInfoController extends BaseController
{
    private String prefix = "system/info";

    @Autowired
    private ITMaterialInfoService tMaterialInfoService;

    @RequiresPermissions("system:info:view")
    @GetMapping()
    public String info()
    {
        return prefix + "/info";
    }

    /**
     * 查询原材料信息列表
     */
    @RequiresPermissions("system:info:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TMaterialInfo tMaterialInfo)
    {
        startPage();
        List<TMaterialInfo> list = tMaterialInfoService.selectTMaterialInfoList(tMaterialInfo);
        return getDataTable(list);
    }

    /**
     * 导出原材料信息列表
     */
    @RequiresPermissions("system:info:export")
    @Log(title = "原材料信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TMaterialInfo tMaterialInfo)
    {
        List<TMaterialInfo> list = tMaterialInfoService.selectTMaterialInfoList(tMaterialInfo);
        ExcelUtil<TMaterialInfo> util = new ExcelUtil<TMaterialInfo>(TMaterialInfo.class);
        return util.exportExcel(list, "原材料信息数据");
    }

    /**
     * 新增原材料信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存原材料信息
     */
    @RequiresPermissions("system:info:add")
    @Log(title = "原材料信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TMaterialInfo tMaterialInfo)
    {
        return toAjax(tMaterialInfoService.insertTMaterialInfo(tMaterialInfo));
    }

    /**
     * 修改原材料信息
     */
    @RequiresPermissions("system:info:edit")
    @GetMapping("/edit/{materialId}")
    public String edit(@PathVariable("materialId") Long materialId, ModelMap mmap)
    {
        TMaterialInfo tMaterialInfo = tMaterialInfoService.selectTMaterialInfoByMaterialId(materialId);
        mmap.put("tMaterialInfo", tMaterialInfo);
        return prefix + "/edit";
    }

    /**
     * 修改保存原材料信息
     */
    @RequiresPermissions("system:info:edit")
    @Log(title = "原材料信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TMaterialInfo tMaterialInfo)
    {
        return toAjax(tMaterialInfoService.updateTMaterialInfo(tMaterialInfo));
    }

    /**
     * 删除原材料信息
     */
    @RequiresPermissions("system:info:remove")
    @Log(title = "原材料信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tMaterialInfoService.deleteTMaterialInfoByMaterialIds(ids));
    }
}
