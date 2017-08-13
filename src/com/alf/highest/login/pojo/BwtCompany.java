package com.alf.highest.login.pojo;

public class BwtCompany {
    private Integer companyid;

    private String companyname;

    private String abbreviation;

    private String companyaccount;

    private String companypwd;

    private Integer companyrole;

    private String companylogo;

    public Integer getCompanyid() {
        return companyid;
    }

    public void setCompanyid(Integer companyid) {
        this.companyid = companyid;
    }

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname == null ? null : companyname.trim();
    }

    public String getAbbreviation() {
        return abbreviation;
    }

    public void setAbbreviation(String abbreviation) {
        this.abbreviation = abbreviation == null ? null : abbreviation.trim();
    }

    public String getCompanyaccount() {
        return companyaccount;
    }

    public void setCompanyaccount(String companyaccount) {
        this.companyaccount = companyaccount == null ? null : companyaccount.trim();
    }

    public String getCompanypwd() {
        return companypwd;
    }

    public void setCompanypwd(String companypwd) {
        this.companypwd = companypwd == null ? null : companypwd.trim();
    }

    public Integer getCompanyrole() {
        return companyrole;
    }

    public void setCompanyrole(Integer companyrole) {
        this.companyrole = companyrole;
    }

    public String getCompanylogo() {
        return companylogo;
    }

    public void setCompanylogo(String companylogo) {
        this.companylogo = companylogo == null ? null : companylogo.trim();
    }
}