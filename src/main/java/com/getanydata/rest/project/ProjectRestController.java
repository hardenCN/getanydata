package com.getanydata.rest.project;

import com.getanydata.entity.Project;
import com.getanydata.entity.ProjectData;
import com.getanydata.service.project.ProjectService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;
import org.springside.modules.beanvalidator.BeanValidators;
import org.springside.modules.mapper.JsonMapper;
import org.springside.modules.web.MediaTypes;

import javax.validation.Validator;

/**
 * Created by pans on 15/11/7.
 */
@RestController
@RequestMapping("/project/v1")
public class ProjectRestController {
    private static final Logger logger = LoggerFactory.getLogger(ProjectRestController.class);
    @Autowired
    private Validator validator;
    @Autowired
    private ProjectService projectService;

    @RequestMapping(value = "/data/create",method = RequestMethod.POST,consumes = MediaTypes.JSON_UTF_8)
    public ResponseEntity<?> createProject(@RequestBody ProjectData projectData,UriComponentsBuilder uriBuilder){
        BeanValidators.validateWithException(validator,projectData);
        projectService.createProjectData(projectData);
        return new ResponseEntity<Object>(projectData, HttpStatus.OK);
    }
}
