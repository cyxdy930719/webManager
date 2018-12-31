package com.neuedu.controller;

import com.neuedu.pojo.User;
import com.neuedu.service.UserServiceImpl;
import com.neuedu.until.CookieUntil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

@WebServlet("/doupdate_user")
public class DoUpdateUser extends HttpServlet {
    private UserServiceImpl service = new UserServiceImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String npwd = req.getParameter("npwd");
        String name = req.getParameter("uname");
        System.out.println(npwd);
        System.out.println(name);
        User u = new User();
        u.setUsername(name);
        u.setPassword(npwd);
        service.updateUser(u);
        resp.sendRedirect("login");
    }
}
