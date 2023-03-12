package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TTechProcessMapper;
import com.ruoyi.system.domain.TTechProcess;
import com.ruoyi.system.service.ITTechProcessService;
import com.ruoyi.common.core.text.Convert;

/**
 * 工序信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-03-12
 */
@Service
public class TTechProcessServiceImpl implements ITTechProcessService 
{
    @Autowired
    private TTechProcessMapper tTechProcessMapper;

    /**
     * 查询工序信息
     * 
     * @param processId 工序信息主键
     * @return 工序信息
     */
    @Override
    public TTechProcess selectTTechProcessByProcessId(Long processId)
    {
        return tTechProcessMapper.selectTTechProcessByProcessId(processId);
    }

    /**
     * 查询工序信息列表
     * 
     * @param tTechProcess 工序信息
     * @return 工序信息
     */
    @Override
    public List<TTechProcess> selectTTechProcessList(TTechProcess tTechProcess)
    {
        return tTechProcessMapper.selectTTechProcessList(tTechProcess);
    }

    /**
     * 新增工序信息
     * 
     * @param tTechProcess 工序信息
     * @return 结果
     */
    @Override
    public int insertTTechProcess(TTechProcess tTechProcess)
    {
        return tTechProcessMapper.insertTTechProcess(tTechProcess);
    }

    /**
     * 修改工序信息
     * 
     * @param tTechProcess 工序信息
     * @return 结果
     */
    @Override
    public int updateTTechProcess(TTechProcess tTechProcess)
    {
        tTechProcess.setUpdateTime(DateUtils.getNowDate());
        return tTechProcessMapper.updateTTechProcess(tTechProcess);
    }

    /**
     * 批量删除工序信息
     * 
     * @param processIds 需要删除的工序信息主键
     * @return 结果
     */
    @Override
    public int deleteTTechProcessByProcessIds(String processIds)
    {
        return tTechProcessMapper.deleteTTechProcessByProcessIds(Convert.toStrArray(processIds));
    }

    /**
     * 删除工序信息信息
     * 
     * @param processId 工序信息主键
     * @return 结果
     */
    @Override
    public int deleteTTechProcessByProcessId(Long processId)
    {
        return tTechProcessMapper.deleteTTechProcessByProcessId(processId);
    }
}
