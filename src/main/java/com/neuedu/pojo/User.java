package com.neuedu.pojo;

import lombok.Data;

@Data
public class User extends Base{
    private String username;
    private String password;
    private String birthday;
    private String telephone;
    private String question;
    private String answer;
}
