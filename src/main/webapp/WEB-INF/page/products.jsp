<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<body>

<c:forEach items="${products}" var="product">
    ${product}
    <br>
</c:forEach>

</body>
</html>