package com.neuedu.pojo;

import lombok.Data;

@Data
public class User extends Role{
    private String username;
    private String password;
    private String birthday;
    private String telephone;
    private String question;
    private String answer;
}
