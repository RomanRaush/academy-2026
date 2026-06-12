package com.academy2026.controller;

import com.academy2026.model.Role;
import com.academy2026.model.User;
import com.academy2026.service.AuthService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Collections;

public class LoginServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.getRequestDispatcher("/WEB-INF/page/login.jsp").forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String login = req.getParameter("login");
        String password = req.getParameter("password");

        boolean authenticated = AuthService.getInstance().authenticate(login, password);

        if (authenticated) {
            User user = new User(login, password, Collections.singletonList(new Role("CUSTOMER")));
            req.getSession().setAttribute("user", user);
            req.setAttribute("loginSuccess", true);
        } else {
            req.setAttribute("loginSuccess", false);
        }

        req.getRequestDispatcher("/WEB-INF/page/loginResult.jsp").forward(req, resp);
    }
}
