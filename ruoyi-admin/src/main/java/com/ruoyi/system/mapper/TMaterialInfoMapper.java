package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TMaterialInfo;

/**
 * 原材料信息Mapper接口
 * 
 * @author ruoyi
 * @date 2023-03-12
 */
public interface TMaterialInfoMapper 
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
     * 删除原材料信息
     * 
     * @param materialId 原材料信息主键
     * @return 结果
     */
    public int deleteTMaterialInfoByMaterialId(Long materialId);

    /**
     * 批量删除原材料信息
     * 
     * @param materialIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTMaterialInfoByMaterialIds(String[] materialIds);
}
