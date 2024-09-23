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

@WebServlet(name = "updateCar", value = "/car/updateCar")
public class updateCar extends HttpServlet {
    private ICarService carService;
    @Override
    public void init(ServletConfig config) throws ServletException {
        carService=new CarService();

    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Car car = new Car();

        String strId=req.getParameter("id");
        int id=Integer.parseInt(strId);
        String manufacturer = req.getParameter("manufacturer");
        String color = req.getParameter("color");
        String model = req.getParameter("model");
        String year = req.getParameter("year");
        double price = Double.parseDouble(req.getParameter("price"));
        short passengers = Short.parseShort(req.getParameter("passengerCapacity"));

        car.setId(id);
        car.setManufacturer(manufacturer);
        car.setColor(color);
        car.setModel(model);
        car.setYear(year);
        car.setPrice(price);
        car.setPassengerCapacity(passengers);

        carService.updateVehicle(id ,car );
        @SuppressWarnings("unchecked")
        List<Car> cars= ((List<Car>)carService.getAllVehicles());
        req.setAttribute("cars" , cars);

        req.getRequestDispatcher("/car/getAllCars.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

}
