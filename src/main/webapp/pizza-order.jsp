<%--
  Created by IntelliJ IDEA.
  User: patricnoriega
  Date: 12/1/21
  Time: 12:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza Order</title>
</head>
<body>
<h1>Pat's Pizza</h1>
<form method="post">
<select class="custom-select">
    <option selected>Select Crust</option>
    <option value="1">One</option>
    <option value="2">Two</option>
    <option value="3">Three</option>
</select>
    <select class="custom-select">
        <option selected>Select Sauce</option>
        <option value="1">One</option>
        <option value="2">Two</option>
        <option value="3">Three</option>
    </select>
    <select class="custom-select">
        <option selected>Select Size</option>
        <option value="1">One</option>
        <option value="2">Two</option>
        <option value="3">Three</option>
    </select>
<div class="custom-control custom-checkbox">
    <input type="checkbox" class="custom-control-input" id="customCheck1">
    <label class="custom-control-label" for="customCheck1">Choose Your Toppings</label>
</div>
    <div class="custom-control custom-checkbox">
        <input type="checkbox" class="custom-control-input" id="customCheck2">
        <label class="custom-control-label" for="customCheck1">Choose Your Toppings</label>
    </div>
    <div class="custom-control custom-checkbox">
        <input type="checkbox" class="custom-control-input" id="customCheck3">
        <label class="custom-control-label" for="customCheck1">Choose Your Toppings</label>
    </div>
</form>
<button type="submit" class="btn btn-primary">Submit</button>
</body>
</html>
