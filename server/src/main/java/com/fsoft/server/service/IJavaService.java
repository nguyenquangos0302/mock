package com.fsoft.server.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.fsoft.server.model.JavaModel;

@Service
public interface IJavaService {
	
	List<JavaModel> findByUrl(String url);

}
