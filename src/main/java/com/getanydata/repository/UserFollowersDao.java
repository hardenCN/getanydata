package com.getanydata.repository;

import com.getanydata.entity.UserFollowers;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * Created by pans on 15/11/7.
 */
public interface UserFollowersDao extends PagingAndSortingRepository<UserFollowers,Long>,JpaSpecificationExecutor<UserFollowers> {
}
