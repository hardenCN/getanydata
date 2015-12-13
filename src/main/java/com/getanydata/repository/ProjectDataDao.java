package com.getanydata.repository;

import com.getanydata.entity.ProjectData;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * Created by pans on 15/11/7.
 */
public interface ProjectDataDao extends PagingAndSortingRepository<ProjectData,Long>,JpaSpecificationExecutor<ProjectData> {
}
