package com.getanydata.service.project;

import com.getanydata.entity.Project;
import com.getanydata.entity.ProjectData;
import com.getanydata.repository.ProjectDao;
import com.getanydata.repository.ProjectDataDao;
import com.getanydata.util.Constans;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.persistence.DynamicSpecifications;
import org.springside.modules.persistence.SearchFilter;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.*;

/**
 * Created by pans on 15/11/7.
 */
@Service
public class ProjectService {

    private static final Logger logger = LoggerFactory.getLogger(ProjectService.class);
    @Autowired
    private ProjectDao projectDao;
    @Autowired
    private ProjectDataDao projectDataDao;
    @PersistenceContext
    private EntityManager entityManager;


    /**
     * 创建用户项目
     * @param project
     * @param userId
     */
    @Transactional
    public void createProject(Project project,Long userId){
        project.setCreateUser(userId);
        project.setAdminUsers(Constans.PREFIX_USER + userId);
        project.setWriteUsers(Constans.PREFIX_USER + userId);
        project.setReadUsers(Constans.PREFIX_USER + userId);
        project.setType(Constans.PROJECT_TYPE_REST);
        project.setCreateDate(new Date());
        project.setUpdateDate(new Date());
        projectDao.save(project);
        Query query = entityManager
                .createNativeQuery("insert into gad_user_project (project_id, user_id) VALUES (:projectId,:userId)");
        query.setParameter("projectId",project.getId());
        query.setParameter("userId",userId);
        int result = query.executeUpdate();
        logger.info("创建项目:"+result);
    }

    public void createProjectData(ProjectData projectData){
        projectDataDao.save(projectData);
    }

    public Project findByContrbution(String selfPathName, String projectName){
        return projectDao.findByContrbution(selfPathName, projectName);
    }

    public Page<Project> getProject(Map<String, Object> searchParams, int pageNum, int pageSize, String sortType) {
        PageRequest pageRequest = buildPageRequest(pageNum, pageSize, sortType);
        Specification<Project> spec = buildSpecification(searchParams);
        return projectDao.findAll(spec,pageRequest);
    }

    /**
     * 创建分页请求.
     */
    private PageRequest buildPageRequest(int pageNumber, int pagzSize, String sortType) {
        Sort sort = null;
        if ("createDate".equals(sortType)) {
            sort = new Sort(Sort.Direction.DESC, "createDate");
        } else if ("id".equals(sortType)) {
            sort = new Sort(Sort.Direction.DESC, "id");
        }
        return new PageRequest(pageNumber - 1, pagzSize, sort);
    }

    /**
     * 创建动态查询条件组合.
     */
    private Specification<Project> buildSpecification(Map<String, Object> searchParams) {
        Map<String, SearchFilter> filters = SearchFilter.parse(searchParams);
        Specification<Project> spec = DynamicSpecifications.bySearchFilter(filters.values(), Project.class);
        return spec;
    }



}
