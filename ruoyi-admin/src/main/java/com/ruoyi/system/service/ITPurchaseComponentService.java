package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TPurchaseComponent;

/**
 * 外购件信息Service接口
 * 
 * @author ruoyi
 * @date 2023-03-12
 */
public interface ITPurchaseComponentService 
{
    /**
     * 查询外购件信息
     * 
     * @param purchaseId 外购件信息主键
     * @return 外购件信息
     */
    public TPurchaseComponent selectTPurchaseComponentByPurchaseId(Long purchaseId);

    /**
     * 查询外购件信息列表
     * 
     * @param tPurchaseComponent 外购件信息
     * @return 外购件信息集合
     */
    public List<TPurchaseComponent> selectTPurchaseComponentList(TPurchaseComponent tPurchaseComponent);

    /**
     * 新增外购件信息
     * 
     * @param tPurchaseComponent 外购件信息
     * @return 结果
     */
    public int insertTPurchaseComponent(TPurchaseComponent tPurchaseComponent);

    /**
     * 修改外购件信息
     * 
     * @param tPurchaseComponent 外购件信息
     * @return 结果
     */
    public int updateTPurchaseComponent(TPurchaseComponent tPurchaseComponent);

    /**
     * 批量删除外购件信息
     * 
     * @param purchaseIds 需要删除的外购件信息主键集合
     * @return 结果
     */
    public int deleteTPurchaseComponentByPurchaseIds(String purchaseIds);

    /**
     * 删除外购件信息信息
     * 
     * @param purchaseId 外购件信息主键
     * @return 结果
     */
    public int deleteTPurchaseComponentByPurchaseId(Long purchaseId);
}
