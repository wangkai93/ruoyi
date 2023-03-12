package com.ruoyi.system.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.TreeEntity;

/**
 * 产品/零/组件信息对象 t_product_component
 * 
 * @author ruoyi
 * @date 2023-03-04
 */
public class TProductComponent extends TreeEntity
{
    private static final long serialVersionUID = 1L;

    /** 产品ID */
    private Long productId;

    /** 是否为父节点 */
    @Excel(name = "是否为父节点")
    private Long isParent;

    /** 图号 */
    @Excel(name = "图号")
    private String productNum;

    /** 名称 */
    @Excel(name = "名称")
    private String productName;

    /** 种类1: 产品，2：组件，3:零件 */
    @Excel(name = "种类1: 产品，2：组件，3:零件")
    private Long productType;

    /** 制造方式 */
    @Excel(name = "制造方式")
    private Long productMakeType;

    /** 计量单位 */
    @Excel(name = "计量单位")
    private String meterageUnit;

    /** 单套数量 */
    @Excel(name = "单套数量")
    private Long assembleQuantity;

    /** 专项费用 */
    @Excel(name = "专项费用")
    private BigDecimal specialItem;

    /** 材料牌号 */
    @Excel(name = "材料牌号")
    private String materialGrade;

    /** 技术条件 */
    @Excel(name = "技术条件")
    private String technicalConditions;

    /** 材料规格 */
    @Excel(name = "材料规格")
    private String materialSpecification;

    /** 单件定额 */
    @Excel(name = "单件定额")
    private BigDecimal singlePieceQuota;

    /** 废品损失金额 */
    @Excel(name = "废品损失金额")
    private BigDecimal wasteLoss;

    /** 型号规格 */
    @Excel(name = "型号规格")
    private String modelSpecification;

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

    public void setProductId(Long productId) 
    {
        this.productId = productId;
    }

    public Long getProductId() 
    {
        return productId;
    }
    public void setIsParent(Long isParent) 
    {
        this.isParent = isParent;
    }

    public Long getIsParent() 
    {
        return isParent;
    }
    public void setProductNum(String productNum) 
    {
        this.productNum = productNum;
    }

    public String getProductNum() 
    {
        return productNum;
    }
    public void setProductName(String productName) 
    {
        this.productName = productName;
    }

    public String getProductName() 
    {
        return productName;
    }
    public void setProductType(Long productType) 
    {
        this.productType = productType;
    }

    public Long getProductType() 
    {
        return productType;
    }
    public void setProductMakeType(Long productMakeType) 
    {
        this.productMakeType = productMakeType;
    }

    public Long getProductMakeType() 
    {
        return productMakeType;
    }
    public void setMeterageUnit(String meterageUnit) 
    {
        this.meterageUnit = meterageUnit;
    }

    public String getMeterageUnit() 
    {
        return meterageUnit;
    }
    public void setAssembleQuantity(Long assembleQuantity) 
    {
        this.assembleQuantity = assembleQuantity;
    }

    public Long getAssembleQuantity() 
    {
        return assembleQuantity;
    }
    public void setSpecialItem(BigDecimal specialItem) 
    {
        this.specialItem = specialItem;
    }

    public BigDecimal getSpecialItem() 
    {
        return specialItem;
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
    public void setSinglePieceQuota(BigDecimal singlePieceQuota) 
    {
        this.singlePieceQuota = singlePieceQuota;
    }

    public BigDecimal getSinglePieceQuota() 
    {
        return singlePieceQuota;
    }
    public void setWasteLoss(BigDecimal wasteLoss) 
    {
        this.wasteLoss = wasteLoss;
    }

    public BigDecimal getWasteLoss() 
    {
        return wasteLoss;
    }
    public void setModelSpecification(String modelSpecification) 
    {
        this.modelSpecification = modelSpecification;
    }

    public String getModelSpecification() 
    {
        return modelSpecification;
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
            .append("productId", getProductId())
            .append("parentId", getParentId())
            .append("isParent", getIsParent())
            .append("productNum", getProductNum())
            .append("productName", getProductName())
            .append("productType", getProductType())
            .append("productMakeType", getProductMakeType())
            .append("meterageUnit", getMeterageUnit())
            .append("assembleQuantity", getAssembleQuantity())
            .append("specialItem", getSpecialItem())
            .append("materialGrade", getMaterialGrade())
            .append("technicalConditions", getTechnicalConditions())
            .append("materialSpecification", getMaterialSpecification())
            .append("singlePieceQuota", getSinglePieceQuota())
            .append("wasteLoss", getWasteLoss())
            .append("modelSpecification", getModelSpecification())
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
