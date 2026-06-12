package com.academy2026.controller;

import com.academy2026.model.Product;
import com.academy2026.model.User;
import com.academy2026.service.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

public class ProductsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        User user = (User) req.getSession().getAttribute("user");
        if (user == null) {
            resp.sendRedirect(req.getContextPath() + "/");
            return;
        }

        ProductService productService = new ProductService();
        List<Product> products = productService.getProducts();

        req.setAttribute("products", products);

        req.getRequestDispatcher("/WEB-INF/page/products.jsp").forward(req, resp);
    }
}
