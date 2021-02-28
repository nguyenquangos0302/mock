package com.fsoft.server.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "topic")
@Getter
@Setter
@NoArgsConstructor
public class TopicEntity extends BaseEntity {

    private String shortDescription;

    @Column(name = "topic_image", columnDefinition = "TEXT")
    private String postImage;

    @Column(name = "topic_home", columnDefinition = "int default 1")
    private String postHome;

    @Column(name = "url", columnDefinition = "varchar(200)", unique = true)
    private String url;

    @ManyToOne
    @JoinColumn(name = "menu_id")
    private MenuEntity menu;

}
