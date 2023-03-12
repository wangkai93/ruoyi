package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TProductComponent;
import com.ruoyi.common.core.domain.Ztree;

/**
 * 产品/零/组件信息Service接口
 * 
 * @author ruoyi
 * @date 2023-03-04
 */
public interface ITProductComponentService 
{
    /**
     * 查询产品/零/组件信息
     * 
     * @param productId 产品/零/组件信息主键
     * @return 产品/零/组件信息
     */
    public TProductComponent selectTProductComponentByProductId(Long productId);

    /**
     * 查询产品/零/组件信息列表
     * 
     * @param tProductComponent 产品/零/组件信息
     * @return 产品/零/组件信息集合
     */
    public List<TProductComponent> selectTProductComponentList(TProductComponent tProductComponent);

    /**
     * 新增产品/零/组件信息
     * 
     * @param tProductComponent 产品/零/组件信息
     * @return 结果
     */
    public int insertTProductComponent(TProductComponent tProductComponent);

    /**
     * 修改产品/零/组件信息
     * 
     * @param tProductComponent 产品/零/组件信息
     * @return 结果
     */
    public int updateTProductComponent(TProductComponent tProductComponent);

    /**
     * 批量删除产品/零/组件信息
     * 
     * @param productIds 需要删除的产品/零/组件信息主键集合
     * @return 结果
     */
    public int deleteTProductComponentByProductIds(String productIds);

    /**
     * 删除产品/零/组件信息信息
     * 
     * @param productId 产品/零/组件信息主键
     * @return 结果
     */
    public int deleteTProductComponentByProductId(Long productId);

    /**
     * 查询产品/零/组件信息树列表
     * 
     * @return 所有产品/零/组件信息信息
     */
    public List<Ztree> selectTProductComponentTree();
}
