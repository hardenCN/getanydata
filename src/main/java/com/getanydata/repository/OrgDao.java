package com.getanydata.repository;

import com.getanydata.entity.Org;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * Created by pans on 15/11/7.
 */
public interface OrgDao extends PagingAndSortingRepository<Org,Long>,JpaSpecificationExecutor<Org>{
}
