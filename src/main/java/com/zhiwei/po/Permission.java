package com.zhiwei.po;

public class Permission {
    private Integer id;

    private String permissioncode;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPermissioncode() {
        return permissioncode;
    }

    public void setPermissioncode(String permissioncode) {
        this.permissioncode = permissioncode == null ? null : permissioncode.trim();
    }
}