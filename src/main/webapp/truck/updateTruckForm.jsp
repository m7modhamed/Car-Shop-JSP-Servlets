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
    <title>Update Truck</title>
</head>
<body>
<jsp:include page="../navBar.jsp"/>

<div class="container m-5">

    <form action="updateTruck" method="post" class="col-6">

        <div class="mb-3">
            <label for="id" class="form-label">Id</label>
            <input type="text" value="${truck.getId()}" name="id" class="form-control" id="id" required>
        </div>

        <div class="mb-3">
            <label for="manufacturer" class="form-label">Manufacturer</label>
            <input type="text" value="${truck.getManufacturer()}" name="manufacturer" class="form-control" id="manufacturer" required>
        </div>

        <div class="mb-3">
            <label for="color" class="form-label">Color</label>
            <input type="text" value="${truck.getColor()}" name="color" class="form-control" id="color" required>
        </div>

        <div class="mb-3">
            <label for="model" class="form-label">Model</label>
            <input type="text" value="${truck.getModel()}" name="model" class="form-control" id="model" required>
        </div>

        <div class="mb-3">
            <label for="year" class="form-label">Year</label>
            <input type="text" value="${truck.getYear()}" name="year" class="form-control" id="year" required>
        </div>

        <div class="mb-3">
            <label for="price" class="form-label">Price</label>
            <input type="number" value="${truck.getPrice()}" name="price" class="form-control" id="price" required>
        </div>

        <div class="mb-3">
            <label for="PayloadCapacity" class="form-label">Payload Capacity</label>
            <input type="number" value="${truck.getPayloadCapacity()}" name="payloadCapacity" class="form-control" id="PayloadCapacity" required>
        </div>

        <div class="mb-3">
            <label for="BedLength" class="form-label">Bed Length</label>
            <input type="number" value="${truck.getBedLength()}" name="bedLength" class="form-control" id="BedLength" required>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>


</div>
</body>
</html>
