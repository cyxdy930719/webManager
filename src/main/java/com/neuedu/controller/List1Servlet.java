package com.neuedu.controller;

import com.neuedu.pojo.Product;
import com.neuedu.service.IServiceProduct;
import com.neuedu.service.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/list1")
public class List1Servlet extends HttpServlet {
    private IServiceProduct service = new ProductServiceImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> lists = service.getlists();
        req.setAttribute("lists",lists);
        req.getRequestDispatcher("WEB-INF/pages/list1.jsp").forward(req,resp);
    }
}
