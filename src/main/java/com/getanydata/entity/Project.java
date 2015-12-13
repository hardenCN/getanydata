package com.getanydata.entity;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.constraints.Max;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by pans on 15/11/6.
 */
@Entity
@Table(name = "gad_project")
public class Project extends IdEntity {
    private String name;
    private String simpleInfo;
    private String description;
    private String secondName;
    @Column(columnDefinition = "int(1) default 0")
    private int isPrivate;
    private String type;
    private String flags;
    @Column(columnDefinition = "int(1) default 0")
    private int isDelete;
    private Long createUser;
    private String readUsers;//分两种写法:1.user123 表示用户id,2.group123 表示这个组织的都可以read,用逗号隔开
    private String writeUsers;
    private String adminUsers;
    private Date createDate;
    private Date updateDate;
    @OneToMany(fetch = FetchType.LAZY,mappedBy = "project")
    private Set<ProjectData> projectDatas = new HashSet<ProjectData>();
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name="gad_user_project",
            joinColumns={
                    @JoinColumn(name="project_id",referencedColumnName="id")
            },
            inverseJoinColumns={
                    @JoinColumn(name="user_id",referencedColumnName="id")
            }
    )
    private Set<User> users = new HashSet<User>();
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name="gad_org_project",
            joinColumns={
                    @JoinColumn(name="project_id",referencedColumnName="id")
            },
            inverseJoinColumns={
                    @JoinColumn(name="org_id",referencedColumnName="id")
            }
    )
    private Set<Org> organizations = new HashSet<Org>();


    @NotBlank
    @Length(max = 15,message = "最大不能超过15个字符")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSimpleInfo() {
        return simpleInfo;
    }

    public void setSimpleInfo(String simpleInfo) {
        this.simpleInfo = simpleInfo;
    }


    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSecondName() {
        return secondName;
    }

    public void setSecondName(String secondName) {
        this.secondName = secondName;
    }

    public int getIsPrivate() {
        return isPrivate;
    }

    public void setIsPrivate(int isPrivate) {
        this.isPrivate = isPrivate;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getFlags() {
        return flags;
    }

    public void setFlags(String flags) {
        this.flags = flags;
    }

    public Set<User> getUsers() {
        return users;
    }

    public void setUsers(Set<User> users) {
        this.users = users;
    }

    public Set<Org> getOrganizations() {
        return organizations;
    }

    public void setOrganizations(Set<Org> organizations) {
        this.organizations = organizations;
    }

    public int getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(int isDelete) {
        this.isDelete = isDelete;
    }

    public Long getCreateUser() {
        return createUser;
    }

    public void setCreateUser(Long createUser) {
        this.createUser = createUser;
    }

    public String getReadUsers() {
        return readUsers;
    }

    public void setReadUsers(String readUsers) {
        this.readUsers = readUsers;
    }

    public String getWriteUsers() {
        return writeUsers;
    }

    public void setWriteUsers(String writeUsers) {
        this.writeUsers = writeUsers;
    }

    public String getAdminUsers() {
        return adminUsers;
    }

    public void setAdminUsers(String adminUsers) {
        this.adminUsers = adminUsers;
    }

    public Set<ProjectData> getProjectDatas() {
        return projectDatas;
    }

    public void setProjectDatas(Set<ProjectData> projectDatas) {
        this.projectDatas = projectDatas;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}
