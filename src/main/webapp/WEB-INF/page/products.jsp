<%@ page import="com.academy2026.service.ProductService" %>
<%@ page import="com.academy2026.model.Product" %>
<%@ page import="com.academy2026.model.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>

<html>
<head>
    <title>Products List</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
            max-width: 600px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
        .message {
            color: green;
            font-weight: bold;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <h1>List of Products</h1>

    <%-- Сообщение из сессии --%>
    <c:if test="${not empty sessionScope.message}">
        <div class="message">${sessionScope.message}</div>
    </c:if>

    <%-- Информация о пользователе --%>
    <c:if test="${not empty sessionScope.user}">
        <p>Welcome, <strong>${sessionScope.user.login}</strong>!</p>
    </c:if>

    <%-- Таблица с продуктами --%>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Price (руб.)</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td>${product.id}</td>
                    <td>${product.title}</td>
                    <td>${product.price}</td>
                    <td>
                        <a href="/product?id=${product.id}">View details</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <br>
    <a href="/login">Login</a> |
    <a href="/registration">Register</a>

    <br><br>
    <label>(c) 2026</label>
</body>
</html>