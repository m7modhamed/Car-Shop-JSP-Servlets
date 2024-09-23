package com.example.carshop.controller.truck;

import com.example.carshop.Service.ITruckService;
import com.example.carshop.Service.TruckService;
import com.example.carshop.model.Truck;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "updateTruck", value = "/truck/updateTruck")
public class updateTruck extends HttpServlet {
    private ITruckService truckService;
    @Override
    public void init(ServletConfig config) throws ServletException {
        truckService =new TruckService();

    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Truck truck = new Truck();

        String strId=req.getParameter("id");
        int id=Integer.parseInt(strId);
        String manufacturer = req.getParameter("manufacturer");
        String color = req.getParameter("color");
        String model = req.getParameter("model");
        String year = req.getParameter("year");
        double price = Double.parseDouble(req.getParameter("price"));
        double payloadCapacity = Double.parseDouble(req.getParameter("payloadCapacity"));
        double bedLength = Double.parseDouble(req.getParameter("bedLength"));

        truck.setId(id);
        truck.setManufacturer(manufacturer);
        truck.setColor(color);
        truck.setModel(model);
        truck.setYear(year);
        truck.setPrice(price);
        truck.setPayloadCapacity(payloadCapacity);
        truck.setBedLength(bedLength);

        truckService.updateVehicle(id ,truck );
        @SuppressWarnings("unchecked")
        List<Truck> trucks= ((List<Truck>)truckService.getAllVehicles());
        req.setAttribute("trucks" , trucks);

        req.getRequestDispatcher("/truck/getAllTrucks.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

}
