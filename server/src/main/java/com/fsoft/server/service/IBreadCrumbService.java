package com.fsoft.server.service;

import org.springframework.stereotype.Service;

import com.fsoft.server.model.BreadCrumbModel;

@Service
public interface IBreadCrumbService {

	BreadCrumbModel findOneById(BreadCrumbModel breadCrumbModel);
	
}
