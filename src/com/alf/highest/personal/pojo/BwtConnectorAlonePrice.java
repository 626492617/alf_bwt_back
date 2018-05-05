package com.alf.highest.personal.pojo;

import com.alf.highest.personal.vo.BwtConnectorAlonePriceVo;

public class BwtConnectorAlonePrice extends BwtConnectorAlonePriceVo{
    private Integer aloneprice;

    private Double alonegoodsykgprice;

    private Double alonegoodsykg;

    private Double aloneoverload;

    private String alonepacking;

    private Integer addressid;

    public Integer getAloneprice() {
        return aloneprice;
    }

    public void setAloneprice(Integer aloneprice) {
        this.aloneprice = aloneprice;
    }

    public Double getAlonegoodsykgprice() {
        return alonegoodsykgprice;
    }

    public void setAlonegoodsykgprice(Double alonegoodsykgprice) {
        this.alonegoodsykgprice = alonegoodsykgprice;
    }

    public Double getAlonegoodsykg() {
        return alonegoodsykg;
    }

    public void setAlonegoodsykg(Double alonegoodsykg) {
        this.alonegoodsykg = alonegoodsykg;
    }

    public Double getAloneoverload() {
        return aloneoverload;
    }

    public void setAloneoverload(Double aloneoverload) {
        this.aloneoverload = aloneoverload;
    }

    public String getAlonepacking() {
        return alonepacking;
    }

    public void setAlonepacking(String alonepacking) {
        this.alonepacking = alonepacking == null ? null : alonepacking.trim();
    }

    public Integer getAddressid() {
        return addressid;
    }

    public void setAddressid(Integer addressid) {
        this.addressid = addressid;
    }
}