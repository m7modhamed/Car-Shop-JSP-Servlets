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

@WebServlet(name = "DeleteTruck", value = "/truck/DeleteTruck")
public class DeleteTruck extends HttpServlet {
    private ITruckService truckService;
    @Override
    public void init(ServletConfig config) throws ServletException {
        truckService =new TruckService();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String strId = request.getParameter("truckId");
        int isDeleted = 0;
        if (strId != null) {
            int id = Integer.parseInt(strId);
            isDeleted = truckService.deleteVehicle(id);
        }
        @SuppressWarnings("unchecked")
        List<Truck> trucks= ((List<Truck>) truckService.getAllVehicles());
        request.setAttribute("trucks" , trucks);
        if (isDeleted > 0) {
            request.getRequestDispatcher("/truck/getAllTrucks.jsp?state=success&action=Deleted").forward(request, response);
        }else{

        request.getRequestDispatcher("/truck/getAllTrucks.jsp?state=fail&action=Deleted").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
