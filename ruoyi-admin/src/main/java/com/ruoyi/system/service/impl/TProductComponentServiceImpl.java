package com.ruoyi.system.service.impl;

import java.util.List;
import java.util.ArrayList;
import com.ruoyi.common.core.domain.Ztree;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TProductComponentMapper;
import com.ruoyi.system.domain.TProductComponent;
import com.ruoyi.system.service.ITProductComponentService;
import com.ruoyi.common.core.text.Convert;

/**
 * 产品/零/组件信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-03-04
 */
@Service
public class TProductComponentServiceImpl implements ITProductComponentService 
{
    @Autowired
    private TProductComponentMapper tProductComponentMapper;

    /**
     * 查询产品/零/组件信息
     * 
     * @param productId 产品/零/组件信息主键
     * @return 产品/零/组件信息
     */
    @Override
    public TProductComponent selectTProductComponentByProductId(Long productId)
    {
        return tProductComponentMapper.selectTProductComponentByProductId(productId);
    }

    /**
     * 查询产品/零/组件信息列表
     * 
     * @param tProductComponent 产品/零/组件信息
     * @return 产品/零/组件信息
     */
    @Override
    public List<TProductComponent> selectTProductComponentList(TProductComponent tProductComponent)
    {
        return tProductComponentMapper.selectTProductComponentList(tProductComponent);
    }

    /**
     * 新增产品/零/组件信息
     * 
     * @param tProductComponent 产品/零/组件信息
     * @return 结果
     */
    @Override
    public int insertTProductComponent(TProductComponent tProductComponent)
    {
        return tProductComponentMapper.insertTProductComponent(tProductComponent);
    }

    /**
     * 修改产品/零/组件信息
     * 
     * @param tProductComponent 产品/零/组件信息
     * @return 结果
     */
    @Override
    public int updateTProductComponent(TProductComponent tProductComponent)
    {
        tProductComponent.setUpdateTime(DateUtils.getNowDate());
        return tProductComponentMapper.updateTProductComponent(tProductComponent);
    }

    /**
     * 批量删除产品/零/组件信息
     * 
     * @param productIds 需要删除的产品/零/组件信息主键
     * @return 结果
     */
    @Override
    public int deleteTProductComponentByProductIds(String productIds)
    {
        return tProductComponentMapper.deleteTProductComponentByProductIds(Convert.toStrArray(productIds));
    }

    /**
     * 删除产品/零/组件信息信息
     * 
     * @param productId 产品/零/组件信息主键
     * @return 结果
     */
    @Override
    public int deleteTProductComponentByProductId(Long productId)
    {
        return tProductComponentMapper.deleteTProductComponentByProductId(productId);
    }

    /**
     * 查询产品/零/组件信息树列表
     * 
     * @return 所有产品/零/组件信息信息
     */
    @Override
    public List<Ztree> selectTProductComponentTree()
    {
        List<TProductComponent> tProductComponentList = tProductComponentMapper.selectTProductComponentList(new TProductComponent());
        List<Ztree> ztrees = new ArrayList<Ztree>();
        for (TProductComponent tProductComponent : tProductComponentList)
        {
            Ztree ztree = new Ztree();
            ztree.setId(tProductComponent.getProductId());
            ztree.setpId(tProductComponent.getParentId());
            ztree.setName(tProductComponent.getProductName());
            ztree.setTitle(tProductComponent.getProductName());
            ztrees.add(ztree);
        }
        return ztrees;
    }
}
