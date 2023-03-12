package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.TOtherParam;

/**
 * 其他参数信息Mapper接口
 * 
 * @author ruoyi
 * @date 2023-03-12
 */
public interface TOtherParamMapper 
{
    /**
     * 查询其他参数信息
     * 
     * @param parameterId 其他参数信息主键
     * @return 其他参数信息
     */
    public TOtherParam selectTOtherParamByParameterId(Long parameterId);

    /**
     * 查询其他参数信息列表
     * 
     * @param tOtherParam 其他参数信息
     * @return 其他参数信息集合
     */
    public List<TOtherParam> selectTOtherParamList(TOtherParam tOtherParam);

    /**
     * 新增其他参数信息
     * 
     * @param tOtherParam 其他参数信息
     * @return 结果
     */
    public int insertTOtherParam(TOtherParam tOtherParam);

    /**
     * 修改其他参数信息
     * 
     * @param tOtherParam 其他参数信息
     * @return 结果
     */
    public int updateTOtherParam(TOtherParam tOtherParam);

    /**
     * 删除其他参数信息
     * 
     * @param parameterId 其他参数信息主键
     * @return 结果
     */
    public int deleteTOtherParamByParameterId(Long parameterId);

    /**
     * 批量删除其他参数信息
     * 
     * @param parameterIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTOtherParamByParameterIds(String[] parameterIds);
}
