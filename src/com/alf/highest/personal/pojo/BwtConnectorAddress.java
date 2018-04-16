package com.alf.highest.personal.pojo;

import java.util.Date;

import com.alf.highest.personal.vo.BwtConnectorAddressVo;

public class BwtConnectorAddress extends BwtConnectorAddressVo{
    private Integer addressid;

    private Integer province;

    private Integer city;

    private Integer area;

    private Integer street;

    private String price;

    private String describes;

    private String phone;

    private Date dateset;

    private Integer personalid;

    private Integer istemplate;

    private Date updataset;

    private String accurate;

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

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price == null ? null : price.trim();
    }

    public String getDescribes() {
        return describes;
    }

    public void setDescribes(String describes) {
        this.describes = describes == null ? null : describes.trim();
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

    public Integer getPersonalid() {
        return personalid;
    }

    public void setPersonalid(Integer personalid) {
        this.personalid = personalid;
    }

    public Integer getIstemplate() {
        return istemplate;
    }

    public void setIstemplate(Integer istemplate) {
        this.istemplate = istemplate;
    }

    public Date getUpdataset() {
        return updataset;
    }

    public void setUpdataset(Date updataset) {
        this.updataset = updataset;
    }

    public String getAccurate() {
        return accurate;
    }

    public void setAccurate(String accurate) {
        this.accurate = accurate == null ? null : accurate.trim();
    }
}