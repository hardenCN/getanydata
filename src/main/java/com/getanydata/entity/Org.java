package com.getanydata.entity;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by pans on 15/11/2.
 * 组织
 */
@Entity
@Table(name = "gad_organization")
public class Org extends IdEntity{
    private String orgName;
    private String orgType;
    private Date createAt;
    private Date updateAt;
    private String orgInfo;
    private String orgDesc;
    private String orgUrl;
    @Column(columnDefinition = "int(1) default 0")
    private int isDelete;
    private String extendInfo;
    @ManyToMany(mappedBy = "organizations",fetch = FetchType.LAZY)
    private Set<User> users = new HashSet<User>();
    @ManyToMany(mappedBy = "organizations",fetch = FetchType.LAZY)
    private Set<Project> projects = new HashSet<Project>();

    public String getOrgName() {
        return orgName;
    }

    public void setOrgName(String orgName) {
        this.orgName = orgName;
    }

    public String getOrgType() {
        return orgType;
    }

    public void setOrgType(String orgType) {
        this.orgType = orgType;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }

    public Date getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(Date updateAt) {
        this.updateAt = updateAt;
    }

    public String getOrgInfo() {
        return orgInfo;
    }

    public void setOrgInfo(String orgInfo) {
        this.orgInfo = orgInfo;
    }

    public String getOrgDesc() {
        return orgDesc;
    }

    public void setOrgDesc(String orgDesc) {
        this.orgDesc = orgDesc;
    }

    public Set<User> getUsers() {
        return users;
    }

    public void setUsers(Set<User> users) {
        this.users = users;
    }

    public String getOrgUrl() {
        return orgUrl;
    }

    public void setOrgUrl(String orgUrl) {
        this.orgUrl = orgUrl;
    }

    public int getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(int isDelete) {
        this.isDelete = isDelete;
    }

    public String getExtendInfo() {
        return extendInfo;
    }

    public void setExtendInfo(String extendInfo) {
        this.extendInfo = extendInfo;
    }
}
