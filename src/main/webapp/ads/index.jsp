<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: patricnoriega
  Date: 12/3/21
  Time: 12:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Patty's Ad's</title>
</head>
<body>
<h1>Welcome to Patty's Ads</h1>
<h2>Ads Section:</h2>
<c:forEach var="ad" items="${ads}">
    <div>
        <h2>${ad.title}</h2>
        <p>Description: ${ad.description}</p>
    </div>
</c:forEach>


</body>
</html>
