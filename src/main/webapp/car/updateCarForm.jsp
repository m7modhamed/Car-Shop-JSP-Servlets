<%--
  Created by IntelliJ IDEA.
  User: osama
  Date: 9/15/2024
  Time: 1:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <style>
        body{
            background-color: #eaecee;
        }
    </style>
    <title>Update Car</title>
</head>
<body>
<jsp:include page="../navBar.jsp"/>

<div class="container m-5">

    <form action="updateCar" method="post" class="col-6">

        <div class="mb-3">
            <label for="id" class="form-label">Id</label>
            <input type="text" value="${car.getId()}" name="id" class="form-control" id="id" required>
        </div>

        <div class="mb-3">
            <label for="manufacturer" class="form-label">Manufacturer</label>
            <input type="text" value="${car.getManufacturer()}" name="manufacturer" class="form-control" id="manufacturer" required>
        </div>

        <div class="mb-3">
            <label for="color" class="form-label">Color</label>
            <input type="text" value="${car.getColor()}" name="color" class="form-control" id="color" required>
        </div>

        <div class="mb-3">
            <label for="model" class="form-label">Model</label>
            <input type="text" value="${car.getModel()}" name="model" class="form-control" id="model" required>
        </div>

        <div class="mb-3">
            <label for="year" class="form-label">Year</label>
            <input type="text" value="${car.getYear()}" name="year" class="form-control" id="year" required>
        </div>

        <div class="mb-3">
            <label for="price" class="form-label">Price</label>
            <input type="number" value="${car.getPrice()}" name="price" class="form-control" id="price" required>
        </div>

        <div class="mb-3">
            <label for="passengerCapacity" class="form-label">Passenger Capacity</label>
            <input type="number" value="${car.getPassengerCapacity()}" name="passengerCapacity" class="form-control" id="passengerCapacity" required>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>


</div>
</body>
</html>
