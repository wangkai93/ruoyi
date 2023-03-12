package com.ruoyi.system.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 原材料信息对象 t_material_info
 * 
 * @author ruoyi
 * @date 2023-03-12
 */
public class TMaterialInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 原材料ID */
    private Long materialId;

    /** 原材料名称 */
    @Excel(name = "原材料名称")
    private String materialName;

    /** 材料牌号 */
    @Excel(name = "材料牌号")
    private String materialGrade;

    /** 技术条件 */
    @Excel(name = "技术条件")
    private String technicalConditions;

    /** 材料规格 */
    @Excel(name = "材料规格")
    private String materialSpecification;

    /** 计量单位 */
    @Excel(name = "计量单位")
    private String meterageUnit;

    /** 价格 */
    @Excel(name = "价格")
    private BigDecimal price;

    /** 价格依据 */
    @Excel(name = "价格依据")
    private String priceBasis;

    /** 供应商 */
    @Excel(name = "供应商")
    private String supplier;

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

    public void setMaterialId(Long materialId) 
    {
        this.materialId = materialId;
    }

    public Long getMaterialId() 
    {
        return materialId;
    }
    public void setMaterialName(String materialName) 
    {
        this.materialName = materialName;
    }

    public String getMaterialName() 
    {
        return materialName;
    }
    public void setMaterialGrade(String materialGrade) 
    {
        this.materialGrade = materialGrade;
    }

    public String getMaterialGrade() 
    {
        return materialGrade;
    }
    public void setTechnicalConditions(String technicalConditions) 
    {
        this.technicalConditions = technicalConditions;
    }

    public String getTechnicalConditions() 
    {
        return technicalConditions;
    }
    public void setMaterialSpecification(String materialSpecification) 
    {
        this.materialSpecification = materialSpecification;
    }

    public String getMaterialSpecification() 
    {
        return materialSpecification;
    }
    public void setMeterageUnit(String meterageUnit) 
    {
        this.meterageUnit = meterageUnit;
    }

    public String getMeterageUnit() 
    {
        return meterageUnit;
    }
    public void setPrice(BigDecimal price) 
    {
        this.price = price;
    }

    public BigDecimal getPrice() 
    {
        return price;
    }
    public void setPriceBasis(String priceBasis) 
    {
        this.priceBasis = priceBasis;
    }

    public String getPriceBasis() 
    {
        return priceBasis;
    }
    public void setSupplier(String supplier) 
    {
        this.supplier = supplier;
    }

    public String getSupplier() 
    {
        return supplier;
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
            .append("materialId", getMaterialId())
            .append("materialName", getMaterialName())
            .append("materialGrade", getMaterialGrade())
            .append("technicalConditions", getTechnicalConditions())
            .append("materialSpecification", getMaterialSpecification())
            .append("meterageUnit", getMeterageUnit())
            .append("price", getPrice())
            .append("priceBasis", getPriceBasis())
            .append("supplier", getSupplier())
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
