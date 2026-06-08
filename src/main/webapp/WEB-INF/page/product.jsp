<%@ page import="com.academy2026.service.ProductService" %>
<%@ page import="com.academy2026.model.Product" %>
<%@ page import="com.academy2026.model.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>

<html>
<head>
    <title>Product Details</title>

</head>
<body>
    <h1>Product Details</h1>

        <div class="product-info">
            <p><span class="label">Title:</span> ${product.title}</p>
            <p><span class="label">Price:</span> ${product.price} руб.</p>
        </div>

    <br>
    <a href="/products" class="back-link">← Back to products list</a>

    <br>
</body>
</html>