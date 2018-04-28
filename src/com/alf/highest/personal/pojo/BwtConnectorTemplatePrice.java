package com.alf.highest.personal.pojo;

public class BwtConnectorTemplatePrice {
    private Integer templateprice;

    private String templateprovincelist;

    private Double templategoodsykgprice;

    private Integer templategoodsykg;

    private Double templateoverload;

    private String templatepacking;

    public Integer getTemplateprice() {
        return templateprice;
    }

    public void setTemplateprice(Integer templateprice) {
        this.templateprice = templateprice;
    }

    public String getTemplateprovincelist() {
        return templateprovincelist;
    }

    public void setTemplateprovincelist(String templateprovincelist) {
        this.templateprovincelist = templateprovincelist == null ? null : templateprovincelist.trim();
    }

    public Double getTemplategoodsykgprice() {
        return templategoodsykgprice;
    }

    public void setTemplategoodsykgprice(Double templategoodsykgprice) {
        this.templategoodsykgprice = templategoodsykgprice;
    }

    public Integer getTemplategoodsykg() {
        return templategoodsykg;
    }

    public void setTemplategoodsykg(Integer templategoodsykg) {
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
}