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

@WebServlet(name = "AddCar", value = "/car/AddCar")
public class AddCar extends HttpServlet {
    private ICarService carService;
    @Override
    public void init(ServletConfig config) throws ServletException {
        carService=new CarService();

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Car car = new Car();
        String strId=req.getParameter("id");
        if(strId != null){
            car.setId(Integer.parseInt(strId));
        }
        car.setManufacturer(req.getParameter("manufacturer"));
        car.setColor(req.getParameter("color"));
        car.setModel(req.getParameter("model"));
        car.setYear(req.getParameter("year"));
        double price = Double.parseDouble(req.getParameter("price"));
        car.setPrice(price);
        short passengers = Short.parseShort(req.getParameter("passengerCapacity"));
        car.setPassengerCapacity(passengers);

        int isAdded = carService.addVehicle(car);
        if(isAdded > 0){
            @SuppressWarnings("unchecked")
            List<Car> cars= ((List<Car>)carService.getAllVehicles());
            req.setAttribute("cars" , cars);

            req.getRequestDispatcher("/car/getAllCars.jsp?state=success&action=Added ").forward(req, resp);
        }else{
            req.getRequestDispatcher("/car/getAllCars.jsp?state=fail&action=Added").forward(req, resp);
        }

    }
}
