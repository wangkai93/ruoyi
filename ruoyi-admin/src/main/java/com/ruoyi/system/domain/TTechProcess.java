package com.ruoyi.system.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 工序信息对象 t_tech_process
 * 
 * @author ruoyi
 * @date 2023-03-12
 */
public class TTechProcess extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 工序ID */
    private Long processId;

    /** 工艺路线ID */
    @Excel(name = "工艺路线ID")
    private Long routeId;

    /** 工序号 */
    @Excel(name = "工序号")
    private String processNum;

    /** 工序名称 */
    @Excel(name = "工序名称")
    private String processName;

    /** 是否外协 */
    @Excel(name = "是否外协")
    private Long isOutsource;

    /** 外协价格 */
    @Excel(name = "外协价格")
    private BigDecimal outsourcePrice;

    /** 设备 */
    @Excel(name = "设备")
    private String device;

    /** 工具 */
    @Excel(name = "工具")
    private String tool;

    /** 生产工时 */
    @Excel(name = "生产工时")
    private BigDecimal workHours;

    /** 工艺描述 */
    @Excel(name = "工艺描述")
    private String processDescription;

    /** 工艺图纸路径 */
    @Excel(name = "工艺图纸路径")
    private String processPicture;

    /** 状态 */
    @Excel(name = "状态")
    private String status;

    /** 预留字段1 */
    @Excel(name = "预留字段1")
    private String attr1;

    /** 预留字段2 */
    @Excel(name = "预留字段2")
    private String attr2;

    /** 预留字段3 */
    @Excel(name = "预留字段3")
    private Long attr3;

    /** 预留字段4 */
    @Excel(name = "预留字段4")
    private Long attr4;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date cteateTime;

    public void setProcessId(Long processId) 
    {
        this.processId = processId;
    }

    public Long getProcessId() 
    {
        return processId;
    }
    public void setRouteId(Long routeId) 
    {
        this.routeId = routeId;
    }

    public Long getRouteId() 
    {
        return routeId;
    }
    public void setProcessNum(String processNum) 
    {
        this.processNum = processNum;
    }

    public String getProcessNum() 
    {
        return processNum;
    }
    public void setProcessName(String processName) 
    {
        this.processName = processName;
    }

    public String getProcessName() 
    {
        return processName;
    }
    public void setIsOutsource(Long isOutsource) 
    {
        this.isOutsource = isOutsource;
    }

    public Long getIsOutsource() 
    {
        return isOutsource;
    }
    public void setOutsourcePrice(BigDecimal outsourcePrice) 
    {
        this.outsourcePrice = outsourcePrice;
    }

    public BigDecimal getOutsourcePrice() 
    {
        return outsourcePrice;
    }
    public void setDevice(String device) 
    {
        this.device = device;
    }

    public String getDevice() 
    {
        return device;
    }
    public void setTool(String tool) 
    {
        this.tool = tool;
    }

    public String getTool() 
    {
        return tool;
    }
    public void setWorkHours(BigDecimal workHours) 
    {
        this.workHours = workHours;
    }

    public BigDecimal getWorkHours() 
    {
        return workHours;
    }
    public void setProcessDescription(String processDescription) 
    {
        this.processDescription = processDescription;
    }

    public String getProcessDescription() 
    {
        return processDescription;
    }
    public void setProcessPicture(String processPicture) 
    {
        this.processPicture = processPicture;
    }

    public String getProcessPicture() 
    {
        return processPicture;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }
    public void setAttr1(String attr1) 
    {
        this.attr1 = attr1;
    }

    public String getAttr1() 
    {
        return attr1;
    }
    public void setAttr2(String attr2) 
    {
        this.attr2 = attr2;
    }

    public String getAttr2() 
    {
        return attr2;
    }
    public void setAttr3(Long attr3) 
    {
        this.attr3 = attr3;
    }

    public Long getAttr3() 
    {
        return attr3;
    }
    public void setAttr4(Long attr4) 
    {
        this.attr4 = attr4;
    }

    public Long getAttr4() 
    {
        return attr4;
    }
    public void setCteateTime(Date cteateTime) 
    {
        this.cteateTime = cteateTime;
    }

    public Date getCteateTime() 
    {
        return cteateTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("processId", getProcessId())
            .append("routeId", getRouteId())
            .append("processNum", getProcessNum())
            .append("processName", getProcessName())
            .append("isOutsource", getIsOutsource())
            .append("outsourcePrice", getOutsourcePrice())
            .append("device", getDevice())
            .append("tool", getTool())
            .append("workHours", getWorkHours())
            .append("processDescription", getProcessDescription())
            .append("processPicture", getProcessPicture())
            .append("status", getStatus())
            .append("remark", getRemark())
            .append("attr1", getAttr1())
            .append("attr2", getAttr2())
            .append("attr3", getAttr3())
            .append("attr4", getAttr4())
            .append("createBy", getCreateBy())
            .append("cteateTime", getCteateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
