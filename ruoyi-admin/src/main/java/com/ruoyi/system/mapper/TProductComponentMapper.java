package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TProductComponent;

/**
 * 产品/零/组件信息Mapper接口
 * 
 * @author ruoyi
 * @date 2023-03-04
 */
public interface TProductComponentMapper 
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
     * 删除产品/零/组件信息
     * 
     * @param productId 产品/零/组件信息主键
     * @return 结果
     */
    public int deleteTProductComponentByProductId(Long productId);

    /**
     * 批量删除产品/零/组件信息
     * 
     * @param productIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTProductComponentByProductIds(String[] productIds);
}
