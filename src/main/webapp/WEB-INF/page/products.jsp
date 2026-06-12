<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Products List</title>
</head>
<body>
    <h1>List of Products</h1>
    <p>Welcome, ${sessionScope.user.login}!</p>
    <ul>
        <c:forEach items="${products}" var="product">
            <li>
                <a href="${pageContext.request.contextPath}/product?id=${product.id}">
                    ${product.title}
                </a>
            </li>
        </c:forEach>
    </ul>
    <br/>
    <a href="${pageContext.request.contextPath}/">Logout</a>
</body>
</html>