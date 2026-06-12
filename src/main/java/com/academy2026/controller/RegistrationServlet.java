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

public class RegistrationServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.getRequestDispatcher("/WEB-INF/page/register.jsp").forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String login = req.getParameter("login");
        String password = req.getParameter("password");

        User user = new User(login, password, Collections.singletonList(new Role("CUSTOMER")));
        AuthService.getInstance().save(user);

        req.setAttribute("registrationSuccess", true);
        req.getRequestDispatcher("/WEB-INF/page/loginResult.jsp").forward(req, resp);
    }
}
