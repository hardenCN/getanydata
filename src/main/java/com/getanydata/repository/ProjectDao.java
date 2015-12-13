package com.getanydata.repository;

import com.getanydata.entity.Project;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

/**
 * Created by pans on 15/11/7.
 */
public interface ProjectDao extends PagingAndSortingRepository<Project,Long>,JpaSpecificationExecutor<Project>{

    /**
     * 查询用户所有的项目，包括自己创建的和贡献的
     * @param selfPathName
     * @param projectName
     * @return
     */
    @Query("select p from Project p left join p.users u where u.selfPathName = :selfPathName and p.name = :projectName")
    public Project findByContrbution(@Param("selfPathName") String selfPathName,
                                     @Param("projectName") String projectName);

    /**
     * 仅仅只查询自己创建的项目
     * @param createUser
     * @param name
     * @return
     */
    public Project findByCreateUserAndName(Long createUser,String name);

}
