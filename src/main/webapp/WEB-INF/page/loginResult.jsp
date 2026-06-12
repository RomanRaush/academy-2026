<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Login result</title>
</head>
<body>
    <h1>Authentication result</h1>
    <c:choose>
        <c:when test="${loginSuccess}">
            <p style="color:green">Login successful!</p>
        </c:when>
        <c:when test="${not loginSuccess and loginSuccess != null}">
            <p style="color:red">Login failed. Invalid credentials.</p>
            <p><a href="${pageContext.request.contextPath}/login">Try again</a></p>
        </c:when>
        <c:when test="${registrationSuccess}">
            <p style="color:green">Registration successful! You can now log in.</p>
        </c:when>
    </c:choose>

    <c:if test="${not empty sessionScope.user}">
        <form action="${pageContext.request.contextPath}/products" method="get">
            <button type="submit">Go to products list</button>
        </form>
    </c:if>

    <p><a href="${pageContext.request.contextPath}/">Back to welcome page</a></p>
</body>
</html>