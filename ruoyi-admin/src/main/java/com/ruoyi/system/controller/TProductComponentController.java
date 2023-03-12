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
import com.ruoyi.system.domain.TProductComponent;
import com.ruoyi.system.service.ITProductComponentService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.core.domain.Ztree;

/**
 * 产品/零/组件信息Controller
 * 
 * @author ruoyi
 * @date 2023-03-04
 */
@Controller
@RequestMapping("/system/component")
public class TProductComponentController extends BaseController
{
    private String prefix = "system/component";

    @Autowired
    private ITProductComponentService tProductComponentService;

    @RequiresPermissions("system:component:view")
    @GetMapping()
    public String component()
    {
        return prefix + "/component";
    }

    /**
     * 查询产品/零/组件信息树列表
     */
    @RequiresPermissions("system:component:list")
    @PostMapping("/list")
    @ResponseBody
    public List<TProductComponent> list(TProductComponent tProductComponent)
    {
        List<TProductComponent> list = tProductComponentService.selectTProductComponentList(tProductComponent);
        return list;
    }

    /**
     * 导出产品/零/组件信息列表
     */
    @RequiresPermissions("system:component:export")
    @Log(title = "产品/零/组件信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TProductComponent tProductComponent)
    {
        List<TProductComponent> list = tProductComponentService.selectTProductComponentList(tProductComponent);
        ExcelUtil<TProductComponent> util = new ExcelUtil<TProductComponent>(TProductComponent.class);
        return util.exportExcel(list, "产品/零/组件信息数据");
    }

    /**
     * 新增产品/零/组件信息
     */
    @GetMapping(value = { "/add/{productId}", "/add/" })
    public String add(@PathVariable(value = "productId", required = false) Long productId, ModelMap mmap)
    {
        if (StringUtils.isNotNull(productId))
        {
            mmap.put("tProductComponent", tProductComponentService.selectTProductComponentByProductId(productId));
        }
        return prefix + "/add";
    }

    /**
     * 新增保存产品/零/组件信息
     */
    @RequiresPermissions("system:component:add")
    @Log(title = "产品/零/组件信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TProductComponent tProductComponent)
    {
        return toAjax(tProductComponentService.insertTProductComponent(tProductComponent));
    }

    /**
     * 修改产品/零/组件信息
     */
    @RequiresPermissions("system:component:edit")
    @GetMapping("/edit/{productId}")
    public String edit(@PathVariable("productId") Long productId, ModelMap mmap)
    {
        TProductComponent tProductComponent = tProductComponentService.selectTProductComponentByProductId(productId);
        mmap.put("tProductComponent", tProductComponent);
        return prefix + "/edit";
    }

    /**
     * 修改保存产品/零/组件信息
     */
    @RequiresPermissions("system:component:edit")
    @Log(title = "产品/零/组件信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TProductComponent tProductComponent)
    {
        return toAjax(tProductComponentService.updateTProductComponent(tProductComponent));
    }

    /**
     * 删除
     */
    @RequiresPermissions("system:component:remove")
    @Log(title = "产品/零/组件信息", businessType = BusinessType.DELETE)
    @GetMapping("/remove/{productId}")
    @ResponseBody
    public AjaxResult remove(@PathVariable("productId") Long productId)
    {
        return toAjax(tProductComponentService.deleteTProductComponentByProductId(productId));
    }

    /**
     * 选择产品/零/组件信息树
     */
    @GetMapping(value = { "/selectComponentTree/{productId}", "/selectComponentTree/" })
    public String selectComponentTree(@PathVariable(value = "productId", required = false) Long productId, ModelMap mmap)
    {
        if (StringUtils.isNotNull(productId))
        {
            mmap.put("tProductComponent", tProductComponentService.selectTProductComponentByProductId(productId));
        }
        return prefix + "/tree";
    }

    /**
     * 加载产品/零/组件信息树列表
     */
    @GetMapping("/treeData")
    @ResponseBody
    public List<Ztree> treeData()
    {
        List<Ztree> ztrees = tProductComponentService.selectTProductComponentTree();
        return ztrees;
    }
}
