package com.neuedu.controller;

import com.neuedu.pojo.Brand;
import com.neuedu.service.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/updatebrand1")
public class UpdateBrandServlet1 extends HttpServlet {
    private ProductServiceImpl service = new ProductServiceImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("brand_id"));
        System.out.println(id);
        Brand brands = service.getOne(id);

        req.setAttribute("brands",brands);
        req.getRequestDispatcher("WEB-INF/pages/updatebrand1.jsp").forward(req,resp);
    }
}
