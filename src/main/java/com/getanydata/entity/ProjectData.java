package com.getanydata.entity;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by pans on 15/11/7.
 */
@Entity
@Table(name = "gad_project_data")
public class ProjectData extends IdEntity {
    @ManyToOne(fetch = FetchType.LAZY)
    private Project project;
    private String apiType;
    private String apiName;
    private Date createAt;
    private Date updateAt;
    @Column(columnDefinition = "int(1) default 0")
    private int isDelete;
    @Lob
    private String apiContentCache;
    @Lob
    private String apiContent;

    public Project getProject() {
        return project;
    }

    public void setProject(Project project) {
        this.project = project;
    }

    @NotBlank
    @Length(min = 2,max = 12,message = "api类型长度为2～12个字符")
    public String getApiType() {
        return apiType;
    }

    public void setApiType(String apiType) {
        this.apiType = apiType;
    }

    @NotBlank
    @Length(min = 1,max = 50,message = "api标题长度为1～50个字符")
    public String getApiName() {
        return apiName;
    }

    public void setApiName(String apiName) {
        this.apiName = apiName;
    }

    @NotBlank
    public String getApiContent() {
        return apiContent;
    }

    public void setApiContent(String apiContent) {
        this.apiContent = apiContent;
    }

    public String getApiContentCache() {
        return apiContentCache;
    }

    public void setApiContentCache(String apiContentCache) {
        this.apiContentCache = apiContentCache;
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

    public int getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(int isDelete) {
        this.isDelete = isDelete;
    }
}
