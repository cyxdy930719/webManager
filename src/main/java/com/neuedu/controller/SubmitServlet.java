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
@WebServlet("/submit")
public class SubmitServlet extends HttpServlet {
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
        User u = new User();
        u.setPassword(password);
        u.setUsername(username);
        u.setAnswer(answer);
        u.setTelephone(tele);
        u.setBirthday(year+"-"+month+"-"+day);
        u.setQuestion(question);
        int data = service.insert(u);
        if(data>0){
            resp.getWriter().write("1");
        }

    }
}
