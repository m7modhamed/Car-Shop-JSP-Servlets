<%--
  Created by IntelliJ IDEA.
  User: osama
  Date: 9/15/2024
  Time: 4:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <style>
        body {
            background-color: #eaecee;
        }
    </style>
    <title>Payload Overloaded</title>
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

                <div class="mb-3">
                    <label for="payload" class="form-label">Payload</label>
                    <input type="number" name="payload" class="form-control" id="payload" required>
                </div>

                <input type="hidden" name="type" value="PayloadOverloaded" />


                <button type="submit" class="btn btn-primary">Submit</button>
            </form>

            <%
                String isOverLoaded = request.getParameter("isOverLoaded");
            if(isOverLoaded != null && isOverLoaded.equals("true")){
            %>
            <h2>Warning: The payload is overloaded!</h2>
            <%
                }else if(isOverLoaded != null && isOverLoaded.equals("false")){
            %>
            <h2>The payload is within the acceptable limits.</h2>
            <%
                }
            %>
        </div>

    </div>

</body>
</html>
