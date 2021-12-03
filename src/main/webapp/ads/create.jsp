<%--
  Created by IntelliJ IDEA.
  User: patricnoriega
  Date: 12/3/21
  Time: 1:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Ad</title>
</head>
<body>
<h1>Post An Ad!</h1>

<form method="post" action="/ads/create">
    <label for="title">Title</label>
    <input  name="title" id="title" class="title">

    <label for="description">Description</label>
    <input name="description" id="description" class="description">
    <button>Post</button>
</form>


</body>
</html>
