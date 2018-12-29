package com.neuedu.controller;

import com.neuedu.pojo.User;
import com.neuedu.service.IUserService;
import com.neuedu.service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/doregister")
public class DoRegisterServlet extends HttpServlet {
    private IUserService service = new UserServiceImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username= req.getParameter("username");
        String password = req.getParameter("pwd");
        String passwords = req.getParameter("pwds");
        String year = req.getParameter("year");
        String month = req.getParameter("month");
        String day = req.getParameter("day");
        String tele = req.getParameter("telephone");
        String question = req.getParameter("question");
        String answer = req.getParameter("answer");
        System.out.println(answer);
        //System.out.println(service.getUser(username).getUsername());
        User u = service.getUser(username);

        if (username!=""||username!=" "){
            User un = service.getUser(username);
            if (un==null){
                resp.getWriter().write("1");
                if(password!=""&&passwords!=""){
                    if (password.equals(passwords)){
                        resp.getWriter().write("3");/*密码相等*/
                        if (answer==""){
                            resp.getWriter().write("5");
                        }else{
                            resp.getWriter().write("6");
                        }
                    }else{
                        resp.getWriter().write("4");/*密码不等*/
                    }
                }

            }else{
                resp.getWriter().write("2");/*已存在*/
            }

        }else{
            resp.getWriter().write("0");/*输入正确用户名*/
        }






















        /*System.out.println(username);
        System.out.println(password);
        System.out.println(passwords);
        System.out.println(year);
        System.out.println(month);
        System.out.println(day);
        System.out.println(tele);
        System.out.println(question);
        System.out.println(answer);*/


    }
}
