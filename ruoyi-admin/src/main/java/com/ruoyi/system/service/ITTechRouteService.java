package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.TTechRoute;

/**
 * 工艺路线信息Service接口
 * 
 * @author ruoyi
 * @date 2023-03-12
 */
public interface ITTechRouteService 
{
    /**
     * 查询工艺路线信息
     * 
     * @param routeId 工艺路线信息主键
     * @return 工艺路线信息
     */
    public TTechRoute selectTTechRouteByRouteId(Long routeId);

    /**
     * 查询工艺路线信息列表
     * 
     * @param tTechRoute 工艺路线信息
     * @return 工艺路线信息集合
     */
    public List<TTechRoute> selectTTechRouteList(TTechRoute tTechRoute);

    /**
     * 新增工艺路线信息
     * 
     * @param tTechRoute 工艺路线信息
     * @return 结果
     */
    public int insertTTechRoute(TTechRoute tTechRoute);

    /**
     * 修改工艺路线信息
     * 
     * @param tTechRoute 工艺路线信息
     * @return 结果
     */
    public int updateTTechRoute(TTechRoute tTechRoute);

    /**
     * 批量删除工艺路线信息
     * 
     * @param routeIds 需要删除的工艺路线信息主键集合
     * @return 结果
     */
    public int deleteTTechRouteByRouteIds(String routeIds);

    /**
     * 删除工艺路线信息信息
     * 
     * @param routeId 工艺路线信息主键
     * @return 结果
     */
    public int deleteTTechRouteByRouteId(Long routeId);
}
