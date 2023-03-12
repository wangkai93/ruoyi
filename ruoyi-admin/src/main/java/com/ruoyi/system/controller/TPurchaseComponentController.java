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
import com.ruoyi.system.domain.TPurchaseComponent;
import com.ruoyi.system.service.ITPurchaseComponentService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 外购件信息Controller
 * 
 * @author ruoyi
 * @date 2023-03-12
 */
@Controller
@RequestMapping("/system/purchase")
public class TPurchaseComponentController extends BaseController
{
    private String prefix = "system/purchase";

    @Autowired
    private ITPurchaseComponentService tPurchaseComponentService;

    @RequiresPermissions("system:purchase:view")
    @GetMapping()
    public String purchase()
    {
        return prefix + "/purchase";
    }

    /**
     * 查询外购件信息列表
     */
    @RequiresPermissions("system:purchase:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TPurchaseComponent tPurchaseComponent)
    {
        startPage();
        List<TPurchaseComponent> list = tPurchaseComponentService.selectTPurchaseComponentList(tPurchaseComponent);
        return getDataTable(list);
    }

    /**
     * 导出外购件信息列表
     */
    @RequiresPermissions("system:purchase:export")
    @Log(title = "外购件信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TPurchaseComponent tPurchaseComponent)
    {
        List<TPurchaseComponent> list = tPurchaseComponentService.selectTPurchaseComponentList(tPurchaseComponent);
        ExcelUtil<TPurchaseComponent> util = new ExcelUtil<TPurchaseComponent>(TPurchaseComponent.class);
        return util.exportExcel(list, "外购件信息数据");
    }

    /**
     * 新增外购件信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存外购件信息
     */
    @RequiresPermissions("system:purchase:add")
    @Log(title = "外购件信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TPurchaseComponent tPurchaseComponent)
    {
        return toAjax(tPurchaseComponentService.insertTPurchaseComponent(tPurchaseComponent));
    }

    /**
     * 修改外购件信息
     */
    @RequiresPermissions("system:purchase:edit")
    @GetMapping("/edit/{purchaseId}")
    public String edit(@PathVariable("purchaseId") Long purchaseId, ModelMap mmap)
    {
        TPurchaseComponent tPurchaseComponent = tPurchaseComponentService.selectTPurchaseComponentByPurchaseId(purchaseId);
        mmap.put("tPurchaseComponent", tPurchaseComponent);
        return prefix + "/edit";
    }

    /**
     * 修改保存外购件信息
     */
    @RequiresPermissions("system:purchase:edit")
    @Log(title = "外购件信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TPurchaseComponent tPurchaseComponent)
    {
        return toAjax(tPurchaseComponentService.updateTPurchaseComponent(tPurchaseComponent));
    }

    /**
     * 删除外购件信息
     */
    @RequiresPermissions("system:purchase:remove")
    @Log(title = "外购件信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tPurchaseComponentService.deleteTPurchaseComponentByPurchaseIds(ids));
    }
}
