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

@WebServlet(name = "getAllTrucks", value = "/truck/getAllTrucks")
public class getAllTrucks extends HttpServlet {

    private ITruckService truckService;
    @Override
    public void init(ServletConfig config) throws ServletException {
        truckService =new TruckService();

    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        @SuppressWarnings("unchecked")
        List<Truck> trucks= ((List<Truck>) truckService.getAllVehicles());
        request.setAttribute("trucks" , trucks);
        request.getRequestDispatcher("/truck//getAllTrucks.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
