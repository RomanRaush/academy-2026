package com.academy2026.controller;

import com.academy2026.model.Product;
import com.academy2026.service.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class ProductServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String idParam = req.getParameter("id");

        if (idParam == null) {
            resp.sendRedirect(req.getContextPath() + "/products");
            return;
        }

        int id = Integer.parseInt(idParam);
        ProductService productService = new ProductService();
        Product product = productService.getProduct(id);
        req.setAttribute("product", product);
        req.getRequestDispatcher("/WEB-INF/page/product.jsp").forward(req, resp);
    }
}