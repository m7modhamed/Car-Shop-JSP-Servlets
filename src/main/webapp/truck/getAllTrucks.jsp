<%@ page import="com.example.carshop.model.Car" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.carshop.model.Truck" %><%--
  Created by IntelliJ IDEA.
  User: osama
  Date: 9/15/2024
  Time: 1:52 PM
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
    <title>All Cars</title>
</head>
<body>
<jsp:include page="../navBar.jsp"/>

<div class="container mt-4">
    <br>
    <%
    String state=  request.getParameter("state");
    String action =  request.getParameter("action");
    if(state != null && state.equals("success")){
    %>
    <div class="alert alert-success" role="alert">
        The car has been <%= action %> successfully!
    </div>
    <%
        } else if (state != null && state.equals("fail")) {
    %>
    <div class="alert alert-danger" role="alert">
        Failed to <%= action %> the car. Please try again later.
    </div>
    <%
        }
    %>
    <h1 class="mb-4">All Trucks</h1>

    <div class="row">
        <%
            // Retrieve the list of trucks from request scope
            List<Truck> trucks = (List<Truck>) request.getAttribute("trucks");
            if (trucks != null && !trucks.isEmpty()) {
                %>
        <h3>the number of all trucks is : <%=trucks.size()%></h3>
        <%
                for (Truck truck : trucks) {
        %>
        <div class="col-md-4 mb-3">
            <div class="card text-bg-light mb-3" style="max-width: 18rem;">
                <div class="card-header">Car ID: <%= truck.getId() %></div>
                <div class="card-body">
                    <h5 class="card-title"><%= truck.getManufacturer() %> <%= truck.getModel() %></h5>
                    <p class="card-text">
                        <strong>Color:</strong> <%= truck.getColor() %><br/>
                        <strong>Year:</strong> <%= truck.getYear() %><br/>
                        <strong>Price:</strong> $<%= truck.getPrice() %><br/>
                        <strong>Payload Capacity:</strong> <%= truck.getPayloadCapacity() %> passengers<br/>
                        <strong>Bed Length:</strong> $<%= truck.getBedLength() %>
                    </p>
                </div>
            </div>
        </div>


        <%
            }
        } else {
        %>
        <p>No trucks available.</p>
        <%
            }
        %>
    </div>
</div>

</body>
</html>
