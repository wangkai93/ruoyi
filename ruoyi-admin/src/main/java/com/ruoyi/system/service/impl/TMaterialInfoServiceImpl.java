package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TMaterialInfoMapper;
import com.ruoyi.system.domain.TMaterialInfo;
import com.ruoyi.system.service.ITMaterialInfoService;
import com.ruoyi.common.core.text.Convert;

/**
 * 原材料信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-03-12
 */
@Service
public class TMaterialInfoServiceImpl implements ITMaterialInfoService 
{
    @Autowired
    private TMaterialInfoMapper tMaterialInfoMapper;

    /**
     * 查询原材料信息
     * 
     * @param materialId 原材料信息主键
     * @return 原材料信息
     */
    @Override
    public TMaterialInfo selectTMaterialInfoByMaterialId(Long materialId)
    {
        return tMaterialInfoMapper.selectTMaterialInfoByMaterialId(materialId);
    }

    /**
     * 查询原材料信息列表
     * 
     * @param tMaterialInfo 原材料信息
     * @return 原材料信息
     */
    @Override
    public List<TMaterialInfo> selectTMaterialInfoList(TMaterialInfo tMaterialInfo)
    {
        return tMaterialInfoMapper.selectTMaterialInfoList(tMaterialInfo);
    }

    /**
     * 新增原材料信息
     * 
     * @param tMaterialInfo 原材料信息
     * @return 结果
     */
    @Override
    public int insertTMaterialInfo(TMaterialInfo tMaterialInfo)
    {
        return tMaterialInfoMapper.insertTMaterialInfo(tMaterialInfo);
    }

    /**
     * 修改原材料信息
     * 
     * @param tMaterialInfo 原材料信息
     * @return 结果
     */
    @Override
    public int updateTMaterialInfo(TMaterialInfo tMaterialInfo)
    {
        tMaterialInfo.setUpdateTime(DateUtils.getNowDate());
        return tMaterialInfoMapper.updateTMaterialInfo(tMaterialInfo);
    }

    /**
     * 批量删除原材料信息
     * 
     * @param materialIds 需要删除的原材料信息主键
     * @return 结果
     */
    @Override
    public int deleteTMaterialInfoByMaterialIds(String materialIds)
    {
        return tMaterialInfoMapper.deleteTMaterialInfoByMaterialIds(Convert.toStrArray(materialIds));
    }

    /**
     * 删除原材料信息信息
     * 
     * @param materialId 原材料信息主键
     * @return 结果
     */
    @Override
    public int deleteTMaterialInfoByMaterialId(Long materialId)
    {
        return tMaterialInfoMapper.deleteTMaterialInfoByMaterialId(materialId);
    }
}
