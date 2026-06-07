<%@ page import="com.academy2026.service.ProductService" %>
<%@ page import="com.academy2026.model.Product" %>
<%@ page import="com.academy.model.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>

<html>
<head>
    <title>Product Details</title>
    <style>
        .product-info {
            border: 1px solid #ddd;
            padding: 15px;
            max-width: 500px;
            background-color: #f9f9f9;
        }
        .product-info p {
            margin: 10px 0;
        }
        .label {
            font-weight: bold;
            display: inline-block;
            width: 80px;
        }
        .back-link {
            margin-top: 20px;
            display: inline-block;
        }
    </style>
</head>
<body>
    <h1>Product Details</h1>

    <c:choose>
        <c:when test="${not empty product}">
            <div class="product-info">
                <p><span class="label">ID:</span> ${product.id}</p>
                <p><span class="label">Title:</span> ${product.title}</p>
                <p><span class="label">Price:</span> ${product.price} руб.</p>
            </div>
        </c:when>
        <c:otherwise>
            <div class="error">
                <p style="color: red;">Product not found!</p>
            </div>
        </c:otherwise>
    </c:choose>

    <br>
    <a href="/products" class="back-link">← Back to products list</a>

    <br><br>
    <label>(c) 2026</label>
</body>
</html>