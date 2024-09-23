package com.example.carshop.controller.car;

import com.example.carshop.Service.CarService;
import com.example.carshop.Service.ICarService;
import com.example.carshop.model.Car;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "DeleteCar", value = "/car/DeleteCar")
public class DeleteCar extends HttpServlet {
    private ICarService carService;
    @Override
    public void init(ServletConfig config) throws ServletException {
        carService=new CarService();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String strId = request.getParameter("carId");
        int isDeleted = 0;
        if (strId != null) {
            int id = Integer.parseInt(strId);
            isDeleted = carService.deleteVehicle(id);
        }
        @SuppressWarnings("unchecked")
        List<Car> cars= ((List<Car>)carService.getAllVehicles());
        request.setAttribute("cars" , cars);
        if (isDeleted > 0) {
            request.getRequestDispatcher("/car/getAllCars.jsp?state=success&action=Deleted").forward(request, response);
        }else{

        request.getRequestDispatcher("/car/getAllCars.jsp?state=fail&action=Deleted").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
