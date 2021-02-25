package com.fsoft.server.convert.impl;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

import com.fsoft.server.convert.IConvertModelAndEntityData;
import com.fsoft.server.entity.PostEntity;
import com.fsoft.server.model.PostModel;

public class PostModelAndEntityConvert implements IConvertModelAndEntityData<PostModel, PostEntity> {
	
	private final ModelMapper modelMapper;

    @Autowired
    public PostModelAndEntityConvert() {
        modelMapper = new ModelMapper();
    }

	@Override
	public PostEntity apply(PostModel arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PostModel convertToModel(PostEntity tObject) {
		PostModel postModel = modelMapper.map(tObject, PostModel.class);
        return postModel;
	}

	@Override
	public PostEntity convertToEntity(PostModel tObject) {
		PostEntity postEntity = modelMapper.map(tObject, PostEntity.class);
        return postEntity;
	}

}
