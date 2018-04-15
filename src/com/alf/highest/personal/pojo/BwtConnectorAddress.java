package com.alf.highest.personal.pojo;

import java.util.Date;

public class BwtConnectorAddress {
    private Integer addressid;

    private Integer province;

    private Integer city;

    private Integer area;

    private Integer street;

    private Integer price;

    private String describe;

    private String phone;

    private Date dateset;

    private Date updataset;

    public Integer getAddressid() {
        return addressid;
    }

    public void setAddressid(Integer addressid) {
        this.addressid = addressid;
    }

    public Integer getProvince() {
        return province;
    }

    public void setProvince(Integer province) {
        this.province = province;
    }

    public Integer getCity() {
        return city;
    }

    public void setCity(Integer city) {
        this.city = city;
    }

    public Integer getArea() {
        return area;
    }

    public void setArea(Integer area) {
        this.area = area;
    }

    public Integer getStreet() {
        return street;
    }

    public void setStreet(Integer street) {
        this.street = street;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe == null ? null : describe.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public Date getDateset() {
        return dateset;
    }

    public void setDateset(Date dateset) {
        this.dateset = dateset;
    }

    public Date getUpdataset() {
        return updataset;
    }

    public void setUpdataset(Date updataset) {
        this.updataset = updataset;
    }
}