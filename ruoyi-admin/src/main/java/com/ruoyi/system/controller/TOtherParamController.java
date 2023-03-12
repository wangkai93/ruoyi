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
import com.ruoyi.system.domain.TOtherParam;
import com.ruoyi.system.service.ITOtherParamService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 其他参数信息Controller
 * 
 * @author ruoyi
 * @date 2023-03-12
 */
@Controller
@RequestMapping("/system/param")
public class TOtherParamController extends BaseController
{
    private String prefix = "system/param";

    @Autowired
    private ITOtherParamService tOtherParamService;

    @RequiresPermissions("system:param:view")
    @GetMapping()
    public String param()
    {
        return prefix + "/param";
    }

    /**
     * 查询其他参数信息列表
     */
    @RequiresPermissions("system:param:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TOtherParam tOtherParam)
    {
        startPage();
        List<TOtherParam> list = tOtherParamService.selectTOtherParamList(tOtherParam);
        return getDataTable(list);
    }

    /**
     * 导出其他参数信息列表
     */
    @RequiresPermissions("system:param:export")
    @Log(title = "其他参数信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TOtherParam tOtherParam)
    {
        List<TOtherParam> list = tOtherParamService.selectTOtherParamList(tOtherParam);
        ExcelUtil<TOtherParam> util = new ExcelUtil<TOtherParam>(TOtherParam.class);
        return util.exportExcel(list, "其他参数信息数据");
    }

    /**
     * 新增其他参数信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存其他参数信息
     */
    @RequiresPermissions("system:param:add")
    @Log(title = "其他参数信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TOtherParam tOtherParam)
    {
        return toAjax(tOtherParamService.insertTOtherParam(tOtherParam));
    }

    /**
     * 修改其他参数信息
     */
    @RequiresPermissions("system:param:edit")
    @GetMapping("/edit/{parameterId}")
    public String edit(@PathVariable("parameterId") Long parameterId, ModelMap mmap)
    {
        TOtherParam tOtherParam = tOtherParamService.selectTOtherParamByParameterId(parameterId);
        mmap.put("tOtherParam", tOtherParam);
        return prefix + "/edit";
    }

    /**
     * 修改保存其他参数信息
     */
    @RequiresPermissions("system:param:edit")
    @Log(title = "其他参数信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TOtherParam tOtherParam)
    {
        return toAjax(tOtherParamService.updateTOtherParam(tOtherParam));
    }

    /**
     * 删除其他参数信息
     */
    @RequiresPermissions("system:param:remove")
    @Log(title = "其他参数信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tOtherParamService.deleteTOtherParamByParameterIds(ids));
    }
}
