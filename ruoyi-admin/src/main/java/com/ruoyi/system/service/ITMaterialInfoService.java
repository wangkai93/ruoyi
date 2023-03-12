package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TMaterialInfo;

/**
 * 原材料信息Service接口
 * 
 * @author ruoyi
 * @date 2023-03-12
 */
public interface ITMaterialInfoService 
{
    /**
     * 查询原材料信息
     * 
     * @param materialId 原材料信息主键
     * @return 原材料信息
     */
    public TMaterialInfo selectTMaterialInfoByMaterialId(Long materialId);

    /**
     * 查询原材料信息列表
     * 
     * @param tMaterialInfo 原材料信息
     * @return 原材料信息集合
     */
    public List<TMaterialInfo> selectTMaterialInfoList(TMaterialInfo tMaterialInfo);

    /**
     * 新增原材料信息
     * 
     * @param tMaterialInfo 原材料信息
     * @return 结果
     */
    public int insertTMaterialInfo(TMaterialInfo tMaterialInfo);

    /**
     * 修改原材料信息
     * 
     * @param tMaterialInfo 原材料信息
     * @return 结果
     */
    public int updateTMaterialInfo(TMaterialInfo tMaterialInfo);

    /**
     * 批量删除原材料信息
     * 
     * @param materialIds 需要删除的原材料信息主键集合
     * @return 结果
     */
    public int deleteTMaterialInfoByMaterialIds(String materialIds);

    /**
     * 删除原材料信息信息
     * 
     * @param materialId 原材料信息主键
     * @return 结果
     */
    public int deleteTMaterialInfoByMaterialId(Long materialId);
}
