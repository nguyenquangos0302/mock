package com.fsoft.server.convert.impl;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

import com.fsoft.server.convert.IConvertModelAndEntityData;
import com.fsoft.server.entity.TopicEntity;
import com.fsoft.server.model.SubTopicModel;
import com.fsoft.server.model.TopicModel;

public class SubTopicModelAndEntityConvert implements IConvertModelAndEntityData<SubTopicModel, TopicEntity>{

	private final ModelMapper modelMapper;
	@Autowired
    public SubTopicModelAndEntityConvert() {
        modelMapper = new ModelMapper();
    }	
	@Override
	public TopicEntity apply(SubTopicModel arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SubTopicModel convertToModel(TopicEntity tObject) {
		SubTopicModel subTopicModel = modelMapper.map(tObject, SubTopicModel.class);
        return subTopicModel;
	}

	@Override
	public TopicEntity convertToEntity(SubTopicModel tObject) {
		TopicEntity topicEntity = modelMapper.map(tObject, TopicEntity.class);
        return topicEntity;
	}

}
