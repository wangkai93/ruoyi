package com.ruoyi.system.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 其他参数信息对象 t_other_param
 * 
 * @author ruoyi
 * @date 2023-03-12
 */
public class TOtherParam extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 参数ID */
    private Long parameterId;

    /** 参数编号 */
    @Excel(name = "参数编号")
    private String parameterCode;

    /** 参数名称 */
    @Excel(name = "参数名称")
    private String parameterName;

    /** 费用/费用率 */
    @Excel(name = "费用/费用率")
    private BigDecimal cost;

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

    public void setParameterId(Long parameterId) 
    {
        this.parameterId = parameterId;
    }

    public Long getParameterId() 
    {
        return parameterId;
    }
    public void setParameterCode(String parameterCode) 
    {
        this.parameterCode = parameterCode;
    }

    public String getParameterCode() 
    {
        return parameterCode;
    }
    public void setParameterName(String parameterName) 
    {
        this.parameterName = parameterName;
    }

    public String getParameterName() 
    {
        return parameterName;
    }
    public void setCost(BigDecimal cost) 
    {
        this.cost = cost;
    }

    public BigDecimal getCost() 
    {
        return cost;
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
            .append("parameterId", getParameterId())
            .append("parameterCode", getParameterCode())
            .append("parameterName", getParameterName())
            .append("cost", getCost())
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
