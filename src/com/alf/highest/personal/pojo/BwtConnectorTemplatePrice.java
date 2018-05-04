package com.alf.highest.personal.pojo;

import com.alf.highest.personal.vo.BwtConnectorTemplatePriceVo;

public class BwtConnectorTemplatePrice extends BwtConnectorTemplatePriceVo{
    private Integer templateprice;

    private Double templategoodsykgprice;

    private Double templategoodsykg;

    private Double templateoverload;

    private String templatepacking;

    private String templatetitle;

    public Integer getTemplateprice() {
        return templateprice;
    }

    public void setTemplateprice(Integer templateprice) {
        this.templateprice = templateprice;
    }

    public Double getTemplategoodsykgprice() {
        return templategoodsykgprice;
    }

    public void setTemplategoodsykgprice(Double templategoodsykgprice) {
        this.templategoodsykgprice = templategoodsykgprice;
    }

    public Double getTemplategoodsykg() {
        return templategoodsykg;
    }

    public void setTemplategoodsykg(Double templategoodsykg) {
        this.templategoodsykg = templategoodsykg;
    }

    public Double getTemplateoverload() {
        return templateoverload;
    }

    public void setTemplateoverload(Double templateoverload) {
        this.templateoverload = templateoverload;
    }

    public String getTemplatepacking() {
        return templatepacking;
    }

    public void setTemplatepacking(String templatepacking) {
        this.templatepacking = templatepacking == null ? null : templatepacking.trim();
    }

    public String getTemplatetitle() {
        return templatetitle;
    }

    public void setTemplatetitle(String templatetitle) {
        this.templatetitle = templatetitle == null ? null : templatetitle.trim();
    }
}