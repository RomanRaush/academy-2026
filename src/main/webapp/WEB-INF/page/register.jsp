<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
    <h1>Registration</h1>
    <form method="post" action="${pageContext.request.contextPath}/registration">
        <label>Login: <input type="text" name="login"/></label><br/>
        <label>Password: <input type="password" name="password"/></label><br/>
        <input type="submit" value="Register"/>
    </form>
    <p>Already have an account? <a href="${pageContext.request.contextPath}/login">Login</a></p>
</body>
</html>