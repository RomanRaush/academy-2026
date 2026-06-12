<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Product Details</title>
</head>
<body>
    <h1>Product Details</h1>
    <div>
        <p><strong>Title:</strong> ${product.title}</p>
        <p><strong>Price:</strong> ${product.price}</p>
    </div>
    <br/>
    <a href="${pageContext.request.contextPath}/products">← Back to products list</a>
</body>
</html>