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
import com.ruoyi.system.domain.TTechProcess;
import com.ruoyi.system.service.ITTechProcessService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 工序信息Controller
 * 
 * @author ruoyi
 * @date 2023-03-12
 */
@Controller
@RequestMapping("/system/process")
public class TTechProcessController extends BaseController
{
    private String prefix = "system/process";

    @Autowired
    private ITTechProcessService tTechProcessService;

    @RequiresPermissions("system:process:view")
    @GetMapping()
    public String process()
    {
        return prefix + "/process";
    }

    /**
     * 查询工序信息列表
     */
    @RequiresPermissions("system:process:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TTechProcess tTechProcess)
    {
        startPage();
        List<TTechProcess> list = tTechProcessService.selectTTechProcessList(tTechProcess);
        return getDataTable(list);
    }

    /**
     * 导出工序信息列表
     */
    @RequiresPermissions("system:process:export")
    @Log(title = "工序信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TTechProcess tTechProcess)
    {
        List<TTechProcess> list = tTechProcessService.selectTTechProcessList(tTechProcess);
        ExcelUtil<TTechProcess> util = new ExcelUtil<TTechProcess>(TTechProcess.class);
        return util.exportExcel(list, "工序信息数据");
    }

    /**
     * 新增工序信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存工序信息
     */
    @RequiresPermissions("system:process:add")
    @Log(title = "工序信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TTechProcess tTechProcess)
    {
        return toAjax(tTechProcessService.insertTTechProcess(tTechProcess));
    }

    /**
     * 修改工序信息
     */
    @RequiresPermissions("system:process:edit")
    @GetMapping("/edit/{processId}")
    public String edit(@PathVariable("processId") Long processId, ModelMap mmap)
    {
        TTechProcess tTechProcess = tTechProcessService.selectTTechProcessByProcessId(processId);
        mmap.put("tTechProcess", tTechProcess);
        return prefix + "/edit";
    }

    /**
     * 修改保存工序信息
     */
    @RequiresPermissions("system:process:edit")
    @Log(title = "工序信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TTechProcess tTechProcess)
    {
        return toAjax(tTechProcessService.updateTTechProcess(tTechProcess));
    }

    /**
     * 删除工序信息
     */
    @RequiresPermissions("system:process:remove")
    @Log(title = "工序信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tTechProcessService.deleteTTechProcessByProcessIds(ids));
    }
}
