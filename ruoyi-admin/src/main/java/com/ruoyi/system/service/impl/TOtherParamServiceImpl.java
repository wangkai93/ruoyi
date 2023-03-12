package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TOtherParamMapper;
import com.ruoyi.system.domain.TOtherParam;
import com.ruoyi.system.service.ITOtherParamService;
import com.ruoyi.common.core.text.Convert;

/**
 * 其他参数信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-03-12
 */
@Service
public class TOtherParamServiceImpl implements ITOtherParamService 
{
    @Autowired
    private TOtherParamMapper tOtherParamMapper;

    /**
     * 查询其他参数信息
     * 
     * @param parameterId 其他参数信息主键
     * @return 其他参数信息
     */
    @Override
    public TOtherParam selectTOtherParamByParameterId(Long parameterId)
    {
        return tOtherParamMapper.selectTOtherParamByParameterId(parameterId);
    }

    /**
     * 查询其他参数信息列表
     * 
     * @param tOtherParam 其他参数信息
     * @return 其他参数信息
     */
    @Override
    public List<TOtherParam> selectTOtherParamList(TOtherParam tOtherParam)
    {
        return tOtherParamMapper.selectTOtherParamList(tOtherParam);
    }

    /**
     * 新增其他参数信息
     * 
     * @param tOtherParam 其他参数信息
     * @return 结果
     */
    @Override
    public int insertTOtherParam(TOtherParam tOtherParam)
    {
        return tOtherParamMapper.insertTOtherParam(tOtherParam);
    }

    /**
     * 修改其他参数信息
     * 
     * @param tOtherParam 其他参数信息
     * @return 结果
     */
    @Override
    public int updateTOtherParam(TOtherParam tOtherParam)
    {
        tOtherParam.setUpdateTime(DateUtils.getNowDate());
        return tOtherParamMapper.updateTOtherParam(tOtherParam);
    }

    /**
     * 批量删除其他参数信息
     * 
     * @param parameterIds 需要删除的其他参数信息主键
     * @return 结果
     */
    @Override
    public int deleteTOtherParamByParameterIds(String parameterIds)
    {
        return tOtherParamMapper.deleteTOtherParamByParameterIds(Convert.toStrArray(parameterIds));
    }

    /**
     * 删除其他参数信息信息
     * 
     * @param parameterId 其他参数信息主键
     * @return 结果
     */
    @Override
    public int deleteTOtherParamByParameterId(Long parameterId)
    {
        return tOtherParamMapper.deleteTOtherParamByParameterId(parameterId);
    }
}
