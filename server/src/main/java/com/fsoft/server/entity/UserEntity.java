package com.fsoft.server.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "user")
@Data
@NoArgsConstructor
public class UserEntity extends BaseEntity {

    private String username;

    private String password;

}
