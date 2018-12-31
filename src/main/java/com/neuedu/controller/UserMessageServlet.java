package com.neuedu.controller;

import com.neuedu.pojo.User;
import com.neuedu.service.UserServiceImpl;
import com.neuedu.until.CookieUntil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/usermessage")
public class UserMessageServlet extends HttpServlet {
    private UserServiceImpl service = new UserServiceImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie[] cookie = req.getCookies();
        Map<String,Cookie> maps = CookieUntil.getCookie(cookie);
        Cookie coo = maps.get("uname");
        String name = coo.getValue();
        User u =service.getUser(name);
        req.setAttribute("u",u);
        req.getRequestDispatcher("WEB-INF/pages/usermessage.jsp").forward(req,resp);

    }
}
