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

@WebServlet(name = "GetCar", value = "/car/GetCar")
public class GetCar extends HttpServlet {
    private ICarService carService;
    @Override
    public void init(ServletConfig config) throws ServletException {
        carService=new CarService();

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);

    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
       Car car= (Car)carService.getVehicle(Integer.parseInt(request.getParameter("carId")));

        request.setAttribute("car",car);
        String type= request.getParameter("type");

        switch (type) {
            case "getCar":
                request.getRequestDispatcher("/car/getCar.jsp").forward(request, response);
                break;
            case "updateCar":
                if (car == null) {
                    request.getRequestDispatcher("/car/updateCar.jsp?isNotExist=true").forward(request, response);
                }
                request.getRequestDispatcher("/car/updateTruckForm.jsp").forward(request, response);
                break;
            case "calculateInsurance":
                double insuranceCost = 0;
                if (car != null) {
                    insuranceCost = carService.calculateInsuranceCost(car.getId());
                }
                request.setAttribute("insuranceCost", insuranceCost);
                request.getRequestDispatcher("/car/calculateInsurance.jsp").forward(request, response);
                break;
        }

    }
}
