<%@ page import="com.example.carshop.model.Car" %><%--
  Created by IntelliJ IDEA.
  User: osama
  Date: 9/15/2024
  Time: 2:09 PM
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
    <title>Insurance</title>
</head>
<body>
<jsp:include page="../navBar.jsp"/>

    <div class="container m-5">
        <div class="c-4 justify-content-center">
            <form action="GetCar" method="get" class="col-6">

                <div class="mb-3">
                    <label for="carId" class="form-label">Car Id</label>
                    <input type="number" name="carId" class="form-control" id="carId" required>
                </div>
                <input type="hidden" name="type" value="calculateInsurance" />
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
        <%
            Car car=(Car)request.getAttribute("car");
        if(car != null){
        %>
        <h1>Car Insurance :</h1>
        <br>
        <h3>Id : ${car.getId()}</h3>
        <h3>Price : ${car.getPrice()}</h3>
        <h3>insurance Cost : <%= request.getAttribute("insuranceCost")%></h3>
        <%
            }else{


        %>
        <h3>No car found for the provided ID.</h3>
        <%
        }
        %>
    </div>



</body>
</html>