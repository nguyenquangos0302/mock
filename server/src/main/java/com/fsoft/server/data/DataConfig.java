package com.fsoft.server.data;

import com.fsoft.server.convert.impl.NavigationConvert;
import com.fsoft.server.entity.NavigationEntity;
import com.fsoft.server.model.NavigationModel;
import com.fsoft.server.repository.INavagationRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Configuration
public class DataConfig {

    @Bean
    CommandLineRunner commandLineRunner(INavagationRepository navagationRepository) {
        return args -> {
            List<NavigationEntity> list = new ArrayList<NavigationEntity>();

//          // parent
            NavigationModel homeNavigationModel = new NavigationModel(1L, "home", "fab fa-battle-net",  "/", 1, "system", "system", LocalDate.now(), LocalDate.now());
            NavigationModel javaNavigationModel = new NavigationModel(2L, "java", "fab fa-battle-net", "/java", 1, "system", "system", LocalDate.now(), LocalDate.now());
            NavigationModel frameworksNavigationModel = new NavigationModel(3L, "frameworks", "fab fa-battle-net", "/frameworks", 1, "system", "system", LocalDate.now(), LocalDate.now());
            NavigationModel hibernateNavigationModel = new NavigationModel(4L, "hibernate", "fab fa-battle-net", "/hibernate", 1, "system", "system", LocalDate.now(), LocalDate.now());

            // children - java
            NavigationModel javaCoreNavigationModel = new NavigationModel(5L, "java core", 2L, "fab fa-battle-net", "/java/java-core", 1, "system", "system", LocalDate.now(), LocalDate.now());
            NavigationModel javaIONavigationModel = new NavigationModel(6L, "java io", 2L, "fab fa-battle-net", "/java/java-io", 1, "system", "system", LocalDate.now(), LocalDate.now());

            // children - frameworks
            NavigationModel springCoreNavigationModel = new NavigationModel(7L, "spring core", 3L, "fab fa-battle-net", "/frameworks/spring-core", 1, "system", "system", LocalDate.now(), LocalDate.now());
            NavigationModel springMVCNavigationModel = new NavigationModel(8L, "spring mvc", 3L, "fab fa-battle-net", "/frameworks/spring-mvc",1,  "system", "system", LocalDate.now(), LocalDate.now());
            NavigationModel springBootNavigationModel = new NavigationModel(9L, "spring boot", 3L, "fab fa-battle-net", "/frameworks/spring-boot", 1,  "system", "system", LocalDate.now(), LocalDate.now());

            // children - hibernate
            NavigationModel relationshipNavigationModel = new NavigationModel(10L, "relationship", 4L, "fab fa-battle-net", "/hibernate/relationship", 1, "system", "system", LocalDate.now(), LocalDate.now());

            // children - java core - children
            NavigationModel oopNavigationModel = new NavigationModel(10L, "oop", 5L, "fab fa-battle-net", "/java/java-core/oop", 1, "system", "system", LocalDate.now(), LocalDate.now());

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
            NavigationEntity oopNavigationEntity = new NavigationConvert().convertToEntity(oopNavigationModel);

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
            list.add(oopNavigationEntity);

            navagationRepository.saveAll(list);
        };
    }

}
