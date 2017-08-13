package com.alf.highest.site.pojo;

import com.alf.highest.site.vo.BwtPersonalVo;

public class BwtPersonal extends BwtPersonalVo{
    private Integer personalid;

    private Integer siteid;

    private String personalname;

    private String personalphone;

    private String personallogo;

    private String personalaccount;

    private String personalpwd;

    public Integer getPersonalid() {
        return personalid;
    }

    public void setPersonalid(Integer personalid) {
        this.personalid = personalid;
    }

    public Integer getSiteid() {
        return siteid;
    }

    public void setSiteid(Integer siteid) {
        this.siteid = siteid;
    }

    public String getPersonalname() {
        return personalname;
    }

    public void setPersonalname(String personalname) {
        this.personalname = personalname == null ? null : personalname.trim();
    }

    public String getPersonalphone() {
        return personalphone;
    }

    public void setPersonalphone(String personalphone) {
        this.personalphone = personalphone == null ? null : personalphone.trim();
    }

    public String getPersonallogo() {
        return personallogo;
    }

    public void setPersonallogo(String personallogo) {
        this.personallogo = personallogo == null ? null : personallogo.trim();
    }

    public String getPersonalaccount() {
        return personalaccount;
    }

    public void setPersonalaccount(String personalaccount) {
        this.personalaccount = personalaccount == null ? null : personalaccount.trim();
    }

    public String getPersonalpwd() {
        return personalpwd;
    }

    public void setPersonalpwd(String personalpwd) {
        this.personalpwd = personalpwd == null ? null : personalpwd.trim();
    }
}