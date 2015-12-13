/*******************************************************************************
 * Copyright (c) 2005, 2014 springside.github.io
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.getanydata.repository;

import org.springframework.data.repository.PagingAndSortingRepository;
import com.getanydata.entity.User;

public interface UserDao extends PagingAndSortingRepository<User, Long> {
	User findByLoginName(String loginName);

	User findByName(String name);
	User findBySelfPathName(String selfPathName);
}
