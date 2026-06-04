package com.academy2026.controller;

import com.academy2026.model.Product;
import com.academy2026.service.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/products")
public class ProductServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setHeader("content-type", "text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();

        int id = Integer.parseInt(req.getParameter("id"));
        ProductService productService = new ProductService();
        Product product = productService.getProduct(id);

        out.println("<html>");
        out.println("<head>");
        out.println("<title>My product app</title>");
        out.println("</head>");
        out.println("<body>");
        out.println(
                "<h1>Product with data id: " + product.getId() + " title: " + product.getTitle() + " year: "
                        + product.getPrice() + "</h1>");
        out.println("<label>(c) 2026</label>");
        out.println("</body>");
        out.println("</html>");
        out.close();
    }
}
