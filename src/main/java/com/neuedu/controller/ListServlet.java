package com.neuedu.controller;

import com.neuedu.dao.DaoUserImpl;
import com.neuedu.dao.IUserDao;
import com.neuedu.pojo.Product;
import com.neuedu.pojo.User;
import com.neuedu.service.IServiceProduct;
import com.neuedu.service.ProductServiceImpl;
import com.neuedu.until.CookieUntil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet("/list")
public class ListServlet extends HttpServlet {
    private IServiceProduct service = new ProductServiceImpl();
    private IUserDao dao = new DaoUserImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie[] cookies = req.getCookies();
        Map<String,Cookie> maps = CookieUntil.getCookie(cookies);
        Cookie coo = maps.get("uname");
        String name = coo.getValue();
        HttpSession session = req.getSession();
        User u = (User) session.getAttribute("user");
        List<Product> lists = service.getlists();
        req.setAttribute("lists",lists);
        if (u==null){
            User user = dao.getUser(name);
            req.setAttribute("user",user);
            req.getRequestDispatcher("WEB-INF/pages/list.jsp").forward(req,resp);
        }else{
            req.getRequestDispatcher("WEB-INF/pages/list.jsp").forward(req,resp);
        }
    }
}
