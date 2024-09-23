<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <style>
        body {
            background-color: #eaecee;
        }
    </style>
    <title>Add Car</title>
</head>
<body>

<jsp:include page="../navBar.jsp"/>

<div class="container m-5">
    <form action="AddCar" method="post">

        <div class="row mb-3">
            <div class="col-md-4">
                <label for="manufacturer" class="form-label">Manufacturer</label>
                <input type="text" name="manufacturer" class="form-control" id="manufacturer" required>
            </div>

            <div class="col-md-4">
                <label for="color" class="form-label">Color</label>
                <input type="text" name="color" class="form-control" id="color" required>
            </div>

            <div class="col-md-4">
                <label for="model" class="form-label">Model</label>
                <input type="text" name="model" class="form-control" id="model" required>
            </div>
        </div>

        <div class="row mb-3">
            <div class="col-md-4">
                <label for="year" class="form-label">Year</label>
                <input type="text" name="year" class="form-control" id="year" required>
            </div>

            <div class="col-md-4">
                <label for="price" class="form-label">Price</label>
                <input type="number" name="price" class="form-control" id="price" required>
            </div>

            <div class="col-md-4">
                <label for="passengerCapacity" class="form-label">Passenger Capacity</label>
                <input type="number" name="passengerCapacity" class="form-control" id="passengerCapacity" required>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

</body>
</html>
