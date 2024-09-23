<%@ page import="com.example.carshop.model.Truck" %><%--
  Created by IntelliJ IDEA.
  User: osama
  Date: 9/15/2024
  Time: 12:14 PM
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
    <title>Car Details</title>
</head>
<body>
<jsp:include page="../navBar.jsp"/>

    <div class="container m-5">
        <div class="c-4 justify-content-center">
            <form action="GetTruck" method="get" class="col-6">

                <div class="mb-3">
                    <label for="truckId" class="form-label">Truck Id</label>
                    <input type="number" name="truckId" class="form-control" id="truckId" required>
                </div>
                <input type="hidden" name="type" value="getTruck" />
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>

        <%
            Truck truck =(Truck)request.getAttribute("truck");
            if(truck != null){
        %>
        <h1>Truck Info :</h1>
        <br>
        <h3>Id : ${truck.getId()}</h3>
        <h3>Manufacturer : ${truck.getManufacturer()}</h3>
        <h3>Model : ${truck.getModel()}</h3>
        <h3>Color : ${truck.getColor()}</h3>
        <h3>Year : ${truck.getYear()}</h3>
        <h3>Price : ${truck.getPrice()}</h3>
        <h3>Payload Capacity : ${truck.getPayloadCapacity()}</h3>
        <h3>Bed Length : ${truck.getBedLength()}</h3>
        <%
        }else{


        %>
        <h3>No truck found for the provided ID.</h3>
        <%
            }
        %>
    </div>



</body>
</html>
