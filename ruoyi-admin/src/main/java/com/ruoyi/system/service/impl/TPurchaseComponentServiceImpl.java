package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TPurchaseComponentMapper;
import com.ruoyi.system.domain.TPurchaseComponent;
import com.ruoyi.system.service.ITPurchaseComponentService;
import com.ruoyi.common.core.text.Convert;

/**
 * 外购件信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-03-12
 */
@Service
public class TPurchaseComponentServiceImpl implements ITPurchaseComponentService 
{
    @Autowired
    private TPurchaseComponentMapper tPurchaseComponentMapper;

    /**
     * 查询外购件信息
     * 
     * @param purchaseId 外购件信息主键
     * @return 外购件信息
     */
    @Override
    public TPurchaseComponent selectTPurchaseComponentByPurchaseId(Long purchaseId)
    {
        return tPurchaseComponentMapper.selectTPurchaseComponentByPurchaseId(purchaseId);
    }

    /**
     * 查询外购件信息列表
     * 
     * @param tPurchaseComponent 外购件信息
     * @return 外购件信息
     */
    @Override
    public List<TPurchaseComponent> selectTPurchaseComponentList(TPurchaseComponent tPurchaseComponent)
    {
        return tPurchaseComponentMapper.selectTPurchaseComponentList(tPurchaseComponent);
    }

    /**
     * 新增外购件信息
     * 
     * @param tPurchaseComponent 外购件信息
     * @return 结果
     */
    @Override
    public int insertTPurchaseComponent(TPurchaseComponent tPurchaseComponent)
    {
        return tPurchaseComponentMapper.insertTPurchaseComponent(tPurchaseComponent);
    }

    /**
     * 修改外购件信息
     * 
     * @param tPurchaseComponent 外购件信息
     * @return 结果
     */
    @Override
    public int updateTPurchaseComponent(TPurchaseComponent tPurchaseComponent)
    {
        tPurchaseComponent.setUpdateTime(DateUtils.getNowDate());
        return tPurchaseComponentMapper.updateTPurchaseComponent(tPurchaseComponent);
    }

    /**
     * 批量删除外购件信息
     * 
     * @param purchaseIds 需要删除的外购件信息主键
     * @return 结果
     */
    @Override
    public int deleteTPurchaseComponentByPurchaseIds(String purchaseIds)
    {
        return tPurchaseComponentMapper.deleteTPurchaseComponentByPurchaseIds(Convert.toStrArray(purchaseIds));
    }

    /**
     * 删除外购件信息信息
     * 
     * @param purchaseId 外购件信息主键
     * @return 结果
     */
    @Override
    public int deleteTPurchaseComponentByPurchaseId(Long purchaseId)
    {
        return tPurchaseComponentMapper.deleteTPurchaseComponentByPurchaseId(purchaseId);
    }
}
