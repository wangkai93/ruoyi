package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TTechProcess;

/**
 * 工序信息Service接口
 * 
 * @author ruoyi
 * @date 2023-03-12
 */
public interface ITTechProcessService 
{
    /**
     * 查询工序信息
     * 
     * @param processId 工序信息主键
     * @return 工序信息
     */
    public TTechProcess selectTTechProcessByProcessId(Long processId);

    /**
     * 查询工序信息列表
     * 
     * @param tTechProcess 工序信息
     * @return 工序信息集合
     */
    public List<TTechProcess> selectTTechProcessList(TTechProcess tTechProcess);

    /**
     * 新增工序信息
     * 
     * @param tTechProcess 工序信息
     * @return 结果
     */
    public int insertTTechProcess(TTechProcess tTechProcess);

    /**
     * 修改工序信息
     * 
     * @param tTechProcess 工序信息
     * @return 结果
     */
    public int updateTTechProcess(TTechProcess tTechProcess);

    /**
     * 批量删除工序信息
     * 
     * @param processIds 需要删除的工序信息主键集合
     * @return 结果
     */
    public int deleteTTechProcessByProcessIds(String processIds);

    /**
     * 删除工序信息信息
     * 
     * @param processId 工序信息主键
     * @return 结果
     */
    public int deleteTTechProcessByProcessId(Long processId);
}
