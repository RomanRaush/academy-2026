<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h1>Login</h1>
    <form method="post" action="${pageContext.request.contextPath}/login">
        <label>Login: <input type="text" name="login"/></label><br/>
        <label>Password: <input type="password" name="password"/></label><br/>
        <input type="submit" value="Login"/>
    </form>
    <p>Dont have an account? <a href="${pageContext.request.contextPath}/registration">Register</a></p>
</body>
</html>