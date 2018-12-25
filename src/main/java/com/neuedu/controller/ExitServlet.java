package com.neuedu.controller;

import com.neuedu.until.CookieUntil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.Map;

@WebServlet("/exit")
public class ExitServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie[] cookies = req.getCookies();
        Map<String,Cookie> maps = CookieUntil.getCookie(cookies);
        Cookie c = maps.get("uname");
        c.setValue("");
        c.setMaxAge(0);
        HttpSession session =req.getSession();
        session.invalidate();
        resp.sendRedirect("login");
    }
}
