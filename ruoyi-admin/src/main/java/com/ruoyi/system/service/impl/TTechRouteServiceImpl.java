package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.TTechRouteMapper;
import com.ruoyi.system.domain.TTechRoute;
import com.ruoyi.system.service.ITTechRouteService;
import com.ruoyi.common.core.text.Convert;

/**
 * 工艺路线信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-03-12
 */
@Service
public class TTechRouteServiceImpl implements ITTechRouteService 
{
    @Autowired
    private TTechRouteMapper tTechRouteMapper;

    /**
     * 查询工艺路线信息
     * 
     * @param routeId 工艺路线信息主键
     * @return 工艺路线信息
     */
    @Override
    public TTechRoute selectTTechRouteByRouteId(Long routeId)
    {
        return tTechRouteMapper.selectTTechRouteByRouteId(routeId);
    }

    /**
     * 查询工艺路线信息列表
     * 
     * @param tTechRoute 工艺路线信息
     * @return 工艺路线信息
     */
    @Override
    public List<TTechRoute> selectTTechRouteList(TTechRoute tTechRoute)
    {
        return tTechRouteMapper.selectTTechRouteList(tTechRoute);
    }

    /**
     * 新增工艺路线信息
     * 
     * @param tTechRoute 工艺路线信息
     * @return 结果
     */
    @Override
    public int insertTTechRoute(TTechRoute tTechRoute)
    {
        return tTechRouteMapper.insertTTechRoute(tTechRoute);
    }

    /**
     * 修改工艺路线信息
     * 
     * @param tTechRoute 工艺路线信息
     * @return 结果
     */
    @Override
    public int updateTTechRoute(TTechRoute tTechRoute)
    {
        tTechRoute.setUpdateTime(DateUtils.getNowDate());
        return tTechRouteMapper.updateTTechRoute(tTechRoute);
    }

    /**
     * 批量删除工艺路线信息
     * 
     * @param routeIds 需要删除的工艺路线信息主键
     * @return 结果
     */
    @Override
    public int deleteTTechRouteByRouteIds(String routeIds)
    {
        return tTechRouteMapper.deleteTTechRouteByRouteIds(Convert.toStrArray(routeIds));
    }

    /**
     * 删除工艺路线信息信息
     * 
     * @param routeId 工艺路线信息主键
     * @return 结果
     */
    @Override
    public int deleteTTechRouteByRouteId(Long routeId)
    {
        return tTechRouteMapper.deleteTTechRouteByRouteId(routeId);
    }
}
