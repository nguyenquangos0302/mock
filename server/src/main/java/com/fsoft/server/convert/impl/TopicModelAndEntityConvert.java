package com.fsoft.server.convert.impl;

import com.fsoft.server.convert.IConvertModelAndEntityData;
import com.fsoft.server.entity.TopicEntity;
import com.fsoft.server.model.TopicModel;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

public class TopicModelAndEntityConvert implements IConvertModelAndEntityData<TopicModel, TopicEntity> {

    private final ModelMapper modelMapper;

    @Autowired
    public TopicModelAndEntityConvert() {
        modelMapper = new ModelMapper();
    }

    @Override
    public TopicModel convertToModel(TopicEntity tObject) {
        TopicModel topicModel = modelMapper.map(tObject, TopicModel.class);
        return topicModel;
    }

    @Override
    public TopicEntity convertToEntity(TopicModel tObject) {
        TopicEntity topicEntity = modelMapper.map(tObject, TopicEntity.class);
        return topicEntity;
    }

    @Override
    public TopicEntity apply(TopicModel topicArticleModel) {
        return null;
    }
}
