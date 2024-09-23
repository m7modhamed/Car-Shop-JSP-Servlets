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
    <title>Car Management</title>
</head>
<body>
<jsp:include page="../navBar.jsp"/>

<div class="container-fluid text-center mt-5">
    <div class="row justify-content-center">

        <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3 mb-4">
            <a href="${pageContext.request.contextPath}/car/addCar.jsp">
                <div class="card text-bg-dark">
                    <div class="card-header">Add New Car</div>
                    <div class="card-body">
                        <h5 class="card-title">Add a New Car</h5>
                        <p class="card-text">Expand your store inventory by adding new cars.</p>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3 mb-4">
            <a href="${pageContext.request.contextPath}/car/getCar.jsp">
                <div class="card text-bg-dark">
                    <div class="card-header">Car Details</div>
                    <div class="card-body">
                        <h5 class="card-title">View Car</h5>
                        <p class="card-text">View details and specifications for a car in your store.</p>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3 mb-4">
            <a href="${pageContext.request.contextPath}/car/updateCar.jsp">
                <div class="card text-bg-dark">
                    <div class="card-header">Update Car</div>
                    <div class="card-body">
                        <h5 class="card-title">Update Car</h5>
                        <p class="card-text">Modify the details and specifications of a car in your store.</p>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3 mb-4">
            <a href="${pageContext.request.contextPath}/car/deleteCar.jsp">
                <div class="card text-bg-dark">
                    <div class="card-header">Delete Car</div>
                    <div class="card-body">
                        <h5 class="card-title">Delete Car</h5>
                        <p class="card-text">Remove a car from your store inventory permanently.</p>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3 mb-4">
            <a href="${pageContext.request.contextPath}/car/getAllCars">
                <div class="card text-bg-dark">
                    <div class="card-header">View All Cars</div>
                    <div class="card-body">
                        <h5 class="card-title">All Cars</h5>
                        <p class="card-text">View a comprehensive list of all cars in your store inventory.</p>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3 mb-4">
            <a href="${pageContext.request.contextPath}/car/calculateInsurance.jsp">
                <div class="card text-bg-dark">
                    <div class="card-header">Calculate Insurance</div>
                    <div class="card-body">
                        <h5 class="card-title">Insurance Cost</h5>
                        <p class="card-text">Calculate the insurance cost for a car based on its details.</p>
                    </div>
                </div>
            </a>
        </div>

    </div>
</div>

</body>
</html>
