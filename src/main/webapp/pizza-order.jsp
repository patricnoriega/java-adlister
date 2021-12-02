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
<form method="POST">
    <h3>Choose Your Crust</h3>
    <label for="crust-select">Crust Type</label>
    <select name="crust-select" id="crust-select">
        <option selected>Select Crust</option>
        <option value="hand-tossed">Hand Tossed</option>
        <option value="pan-pizza">Pan Pizza</option>
        <option value="deep-dish">Deep Dish</option>
    </select>
    <br>

    <h3>Choose Your Sauce</h3>
    <label for="sauce-select">Sauce Type</label>
    <select name="sauce-select" id="sauce-select">
        <option selected>Select Sauce</option>
        <option value="red">Red</option>
        <option value="white">White</option>
        <option value="none">None</option>
    </select>
    <br>


    <h3>Choose Your Size</h3>
    <label for="size-select">Size Type</label>
    <select name="size-select" id="size-select">
        <option selected>Select Size</option>
        <option value="small">Small</option>
        <option value="medium">Medium</option>
        <option value="large">Large</option>
    </select>
    <br>


    <h3>Choose Your Toppings</h3>
    <div>
        <label for="pepperoni">Pepperoni</label>
        <input type="checkbox" value="pepperoni" id="pepperoni" name="toppings">
    </div>
    <div>
        <label for="mushroom">Mushroom</label>
        <input type="checkbox" value="mushroom" id="mushroom" name="toppings">
    </div>
    <div>
        <label for="Sausage">Sausage</label>
        <input type="checkbox" value="Sausage" id="Sausage" name="toppings">
    </div>

    <h3>Delivery Address</h3>
    <div>
        <label for="address">Address</label>
        <input type="text" value="address" id="address" name="address" placeholder="1234 Main St">
    </div>
    <br>

    <button type="submit" class="btn btn-primary">Submit</button>
</form>
</body>
</html>
