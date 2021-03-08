package com.fsoft.server.convert.impl;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

import com.fsoft.server.convert.IConvertModelAndEntityData;
import com.fsoft.server.entity.CommentEntity;
import com.fsoft.server.model.CommentModel;

public class CommentModelAndEntityConvert implements IConvertModelAndEntityData<CommentModel, CommentEntity> {

	private final ModelMapper modelMapper;

	@Autowired
	public CommentModelAndEntityConvert() {
		modelMapper = new ModelMapper();
	}

	@Override
	public CommentEntity apply(CommentModel arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CommentModel convertToModel(CommentEntity tObject) {
		// TODO Auto-generated method stub
		CommentModel commentModel = modelMapper.map(tObject, CommentModel.class);
		return commentModel;
	}

	@Override
	public CommentEntity convertToEntity(CommentModel tObject) {
		CommentEntity commentEntity = modelMapper.map(tObject, CommentEntity.class);
		return commentEntity;
	}
	
}
