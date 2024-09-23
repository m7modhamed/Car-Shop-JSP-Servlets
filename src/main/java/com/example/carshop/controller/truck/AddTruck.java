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

@WebServlet(name = "AddTruck", value = "/truck/AddTruck")
public class AddTruck extends HttpServlet {
    private ITruckService truckService;
    @Override
    public void init(ServletConfig config) throws ServletException {
        truckService=new TruckService();

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Truck truck = new Truck();
        String strId=req.getParameter("id");
        if(strId != null){
            truck.setId(Integer.parseInt(strId));
        }
        truck.setManufacturer(req.getParameter("manufacturer"));
        truck.setColor(req.getParameter("color"));
        truck.setModel(req.getParameter("model"));
        truck.setYear(req.getParameter("year"));
        double price = Double.parseDouble(req.getParameter("price"));
        truck.setPrice(price);
        double payloadCapacity = Double.parseDouble(req.getParameter("payloadCapacity"));
        truck.setPayloadCapacity(payloadCapacity);
        double bedLength = Double.parseDouble(req.getParameter("bedLength"));
        truck.setBedLength(bedLength);

        int isAdded = truckService.addVehicle(truck);
        if(isAdded > 0){
            @SuppressWarnings("unchecked")
            List<Truck> trucks= ((List<Truck>)truckService.getAllVehicles());
            req.setAttribute("trucks" , trucks);

            req.getRequestDispatcher("/truck/getAllTrucks.jsp?state=success&action=Added ").forward(req, resp);
        }else{
            req.getRequestDispatcher("/truck/getAllTrucks.jsp?state=fail&action=Added").forward(req, resp);
        }

    }
}
