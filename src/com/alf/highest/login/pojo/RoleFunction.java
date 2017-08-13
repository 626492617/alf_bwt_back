package com.alf.highest.login.pojo;

public class RoleFunction {
    private Integer roleid;

    private String modular;

    private String funs;

    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public String getModular() {
        return modular;
    }

    public void setModular(String modular) {
        this.modular = modular == null ? null : modular.trim();
    }

    public String getFuns() {
        return funs;
    }

    public void setFuns(String funs) {
        this.funs = funs == null ? null : funs.trim();
    }
}