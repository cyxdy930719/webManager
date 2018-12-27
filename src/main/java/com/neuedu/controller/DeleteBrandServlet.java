package com.neuedu.controller;

import com.neuedu.service.ProductServiceImpl;
import com.sun.scenario.effect.impl.sw.java.JSWBrightpassPeer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/deletebrand")
public class DeleteBrandServlet extends HttpServlet {
    private ProductServiceImpl service = new ProductServiceImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int brand_id = Integer.parseInt(req.getParameter("brand_id"));
        service.deleteBrand(brand_id);
        resp.sendRedirect("brand");
    }
}
