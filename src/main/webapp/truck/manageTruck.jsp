<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        a {
            text-decoration: none;
        }
        body {
            background-color: #eaecee;
        }
        .card {
            transition: 0.9s;
        }
        .card:hover {
            transform: scale(1.04);
        }
    </style>
    <title>Truck Management</title>
</head>
<body>
<jsp:include page="../navBar.jsp"/>

<div class="container-fluid text-center mt-5">
    <div class="row justify-content-center">

        <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3 mb-4">
            <a href="${pageContext.request.contextPath}/truck/addTruck.jsp">
                <div class="card text-bg-secondary   ">
                    <div class="card-header">Add New Truck</div>
                    <div class="card-body">
                        <h5 class="card-title">Add a New Truck</h5>
                        <p class="card-text">Expand your store inventory by adding new Trucks.</p>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3 mb-4">
            <a href="${pageContext.request.contextPath}/truck/getTruck.jsp">
                <div class="card text-bg-secondary   ">
                    <div class="card-header">Truck Details</div>
                    <div class="card-body">
                        <h5 class="card-title">View Truck</h5>
                        <p class="card-text">View details and specifications for a Truck in your store.</p>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3 mb-4">
            <a href="${pageContext.request.contextPath}/truck/updateTruck.jsp">
                <div class="card text-bg-secondary   ">
                    <div class="card-header">Update Truck</div>
                    <div class="card-body">
                        <h5 class="card-title">Update Truck</h5>
                        <p class="card-text">Modify the details and specifications of a Truck in your store.</p>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3 mb-4">
            <a href="${pageContext.request.contextPath}/truck/deleteTruck.jsp">
                <div class="card text-bg-secondary   ">
                    <div class="card-header">Delete Truck</div>
                    <div class="card-body">
                        <h5 class="card-title">Delete Truck</h5>
                        <p class="card-text">Remove a Truck from your store inventory permanently.</p>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3 mb-4">
            <a href="${pageContext.request.contextPath}/truck/getAllTrucks">
                <div class="card text-bg-secondary   ">
                    <div class="card-header">View All Trucks</div>
                    <div class="card-body">
                        <h5 class="card-title">All Trucks</h5>
                        <p class="card-text">View a comprehensive list of all trucks in your store inventory.</p>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3 mb-4">
            <a href="${pageContext.request.contextPath}/truck/checkPayloadOverloaded.jsp">
                <div class="card text-bg-secondary   ">
                    <div class="card-header">Check Payload Status</div>
                    <div class="card-body">
                        <h5 class="card-title">Payload Overload Check</h5>
                        <p class="card-text">Verify if the payload of a vehicle exceeds the allowable limit and ensure safety compliance.</p>
                    </div>
                </div>
            </a>
        </div>


    </div>
</div>

</body>
</html>
