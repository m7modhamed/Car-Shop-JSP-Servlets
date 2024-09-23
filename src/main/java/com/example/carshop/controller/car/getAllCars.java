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

@WebServlet(name = "getAllCars", value = "/car/getAllCars")
public class getAllCars extends HttpServlet {

    private ICarService carService;
    @Override
    public void init(ServletConfig config) throws ServletException {
        carService=new CarService();

    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        @SuppressWarnings("unchecked")
        List<Car> cars= ((List<Car>)carService.getAllVehicles());
        request.setAttribute("cars" , cars);
        request.getRequestDispatcher("/car/getAllCars.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
