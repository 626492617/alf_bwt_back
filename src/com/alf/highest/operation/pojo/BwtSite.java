package com.alf.highest.operation.pojo;

public class BwtSite {
    private Integer siteid;

    private String sitename;

    private String siteabbreviation;

    private String dutypeople;

    private String dutyphone;

    private Integer province;

    private Integer city;

    private Integer area;

    private Integer street;

    private String siteaccount;

    private String sitepwd;

    private String address;

    private String sitelogo;

    private Integer companyid;

    private Integer siterole;

    private Integer logoid;

    public Integer getSiteid() {
        return siteid;
    }

    public void setSiteid(Integer siteid) {
        this.siteid = siteid;
    }

    public String getSitename() {
        return sitename;
    }

    public void setSitename(String sitename) {
        this.sitename = sitename == null ? null : sitename.trim();
    }

    public String getSiteabbreviation() {
        return siteabbreviation;
    }

    public void setSiteabbreviation(String siteabbreviation) {
        this.siteabbreviation = siteabbreviation == null ? null : siteabbreviation.trim();
    }

    public String getDutypeople() {
        return dutypeople;
    }

    public void setDutypeople(String dutypeople) {
        this.dutypeople = dutypeople == null ? null : dutypeople.trim();
    }

    public String getDutyphone() {
        return dutyphone;
    }

    public void setDutyphone(String dutyphone) {
        this.dutyphone = dutyphone == null ? null : dutyphone.trim();
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

    public String getSiteaccount() {
        return siteaccount;
    }

    public void setSiteaccount(String siteaccount) {
        this.siteaccount = siteaccount == null ? null : siteaccount.trim();
    }

    public String getSitepwd() {
        return sitepwd;
    }

    public void setSitepwd(String sitepwd) {
        this.sitepwd = sitepwd == null ? null : sitepwd.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getSitelogo() {
        return sitelogo;
    }

    public void setSitelogo(String sitelogo) {
        this.sitelogo = sitelogo == null ? null : sitelogo.trim();
    }

    public Integer getCompanyid() {
        return companyid;
    }

    public void setCompanyid(Integer companyid) {
        this.companyid = companyid;
    }

    public Integer getSiterole() {
        return siterole;
    }

    public void setSiterole(Integer siterole) {
        this.siterole = siterole;
    }

    public Integer getLogoid() {
        return logoid;
    }

    public void setLogoid(Integer logoid) {
        this.logoid = logoid;
    }
}