package com.getanydata.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Date;

/**
 * Created by pans on 15/11/7.
 */
@Entity
@Table(name = "gad_user_followers")
public class UserFollowers extends IdEntity{
    private Long userId;
    private Long followerId;
    private Date followAt;
    private String followReason;//关注原因
    private String followType;//关注类型

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getFollowerId() {
        return followerId;
    }

    public void setFollowerId(Long followerId) {
        this.followerId = followerId;
    }

    public Date getFollowAt() {
        return followAt;
    }

    public void setFollowAt(Date followAt) {
        this.followAt = followAt;
    }

    public String getFollowReason() {
        return followReason;
    }

    public void setFollowReason(String followReason) {
        this.followReason = followReason;
    }

    public String getFollowType() {
        return followType;
    }

    public void setFollowType(String followType) {
        this.followType = followType;
    }
}
