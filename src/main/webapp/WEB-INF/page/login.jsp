<%@ page import="com.academy2026.service.ProductService" %>
<%@ page import="com.academy2026.model.Product" %>
<%@ page import="com.academy2026.model.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>

<html>
  <head>
    <title>Login Page</title>
  </head>
  <body>
    <h1>Login </h1>
    <form method="post" action="/login">;
      <label>Login: </label> <input name="login"/><br>
      <label>Password: </label> <input name="password"/><br>
      <input type="submit" value="Login"/>
    </form>
  </body>
</html>