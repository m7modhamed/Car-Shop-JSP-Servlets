<%--
  Created by IntelliJ IDEA.
  User: osama
  Date: 9/15/2024
  Time: 1:45 PM
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
    <title>Delete Car</title>
</head>
<body>
<jsp:include page="../navBar.jsp"/>

    <div class="container m-5">
        <div class="c-4 justify-content-center">
            <form action="DeleteCar" method="get" class="col-6">

                <div class="mb-3">
                    <label for="carId" class="form-label">Car Id</label>
                    <input type="number" name="carId" class="form-control" id="carId" required>
                </div>

                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>

</body>
</html>
