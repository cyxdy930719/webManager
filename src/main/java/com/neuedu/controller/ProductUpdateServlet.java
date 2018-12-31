package com.neuedu.controller;

import com.neuedu.pojo.Product;
import com.neuedu.service.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/update")
public class ProductUpdateServlet extends HttpServlet {
    private ProductServiceImpl service = new ProductServiceImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("product_id"));
        Product p = service.getOne(id);
        req.setAttribute("p",p);
        req.getRequestDispatcher("WEB-INF/pages/update.jsp").forward(req,resp);
    }
}
