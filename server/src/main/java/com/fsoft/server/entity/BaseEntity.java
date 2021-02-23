package com.fsoft.server.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

import lombok.Data;
import lombok.NoArgsConstructor;

@MappedSuperclass
@Data
@NoArgsConstructor
public abstract class BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "status", columnDefinition = "int default 1")
    private int status;

    @Column(name = "createdby", columnDefinition = "varchar(255) default 'system'")
    private String createdBy;

    @Column(name = "modifiedby", columnDefinition = "varchar(255) default 'system'")
    private String modifiedBy;

    @Column(name = "createddate", columnDefinition="TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
    private LocalDate createdDate;

    @Column(name = "modifieddate", columnDefinition="TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
    private LocalDate modifiedDate;
}
