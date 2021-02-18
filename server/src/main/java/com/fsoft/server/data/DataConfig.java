package com.fsoft.server.data;

import com.fsoft.server.convert.impl.NavigationConvert;
import com.fsoft.server.entity.NavigationEntity;
import com.fsoft.server.model.NavigationModel;
import com.fsoft.server.repository.INavagationRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.ArrayList;
import java.util.List;

@Configuration
public class DataConfig {

    @Bean
    CommandLineRunner commandLineRunner(INavagationRepository navagationRepository) {
        return args -> {
            List<NavigationEntity> list = new ArrayList<NavigationEntity>();

//          // parent
            NavigationModel homeNavigationModel = new NavigationModel(1L, "home", "/");
            NavigationModel javaNavigationModel = new NavigationModel(2L, "java", "/java");
            NavigationModel frameworksNavigationModel = new NavigationModel(3L, "frameworks", "/frameworks");
            NavigationModel hibernateNavigationModel = new NavigationModel(4L, "hibernate", "/hibernate");

            // children - java
            NavigationModel javaCoreNavigationModel = new NavigationModel(5L, "java core", 2L, "/java/java-core");
            NavigationModel javaIONavigationModel = new NavigationModel(6L, "java io", 2L, "/java/java-io");

            // children - frameworks
            NavigationModel springCoreNavigationModel = new NavigationModel(7L, "spring core", 3L, "/frameworks/spring-core");
            NavigationModel springMVCNavigationModel = new NavigationModel(8L, "spring mvc", 3L, "/frameworks/spring-mvc");
            NavigationModel springBootNavigationModel = new NavigationModel(9L, "spring boot", 3L, "/frameworks/spring-boot");

            // children - hibernate
            NavigationModel relationshipNavigationModel = new NavigationModel(10L, "relationship", 4L, "/hibernate/relationship");

            // convert data from navigation-model to navigation-entity
            NavigationEntity homeNavigationEntity = new NavigationConvert().convertToEntity(homeNavigationModel);
            NavigationEntity javaNavigationEntity = new NavigationConvert().convertToEntity(javaNavigationModel);
            NavigationEntity frameworksNavigationEntity = new NavigationConvert().convertToEntity(frameworksNavigationModel);
            NavigationEntity hibernateNavigationEntity = new NavigationConvert().convertToEntity(hibernateNavigationModel);
            NavigationEntity javaCoreNavigationEntity = new NavigationConvert().convertToEntity(javaCoreNavigationModel);
            NavigationEntity javaIONavigationEntity = new NavigationConvert().convertToEntity(javaIONavigationModel);
            NavigationEntity springCoreNavigationEntity = new NavigationConvert().convertToEntity(springCoreNavigationModel);
            NavigationEntity springMVCNavigationEntity = new NavigationConvert().convertToEntity(springMVCNavigationModel);
            NavigationEntity springBootNavigationEntity = new NavigationConvert().convertToEntity(springBootNavigationModel);
            NavigationEntity relationshipNavigationEntity = new NavigationConvert().convertToEntity(relationshipNavigationModel);

            // add data
            list.add(homeNavigationEntity);
            list.add(javaNavigationEntity);
            list.add(frameworksNavigationEntity);
            list.add(hibernateNavigationEntity);
            list.add(javaCoreNavigationEntity);
            list.add(javaIONavigationEntity);
            list.add(springCoreNavigationEntity);
            list.add(springMVCNavigationEntity);
            list.add(springBootNavigationEntity);
            list.add(relationshipNavigationEntity);

            navagationRepository.saveAll(list);
        };
    }

}
