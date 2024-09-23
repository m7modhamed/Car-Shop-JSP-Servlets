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

@WebServlet(name = "GetTruck", value = "/truck/GetTruck")
public class GetTruck extends HttpServlet {
    private ITruckService truckService;
    @Override
    public void init(ServletConfig config) throws ServletException {
        truckService =new TruckService();

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);

    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
       Truck truck= (Truck) truckService.getVehicle(Integer.parseInt(request.getParameter("truckId")));

        request.setAttribute("truck",truck);
        String type= request.getParameter("type");

        switch (type) {
            case "getTruck":
                request.getRequestDispatcher("/truck/getTruck.jsp").forward(request, response);
                break;
            case "updateTruck":
                if (truck == null) {
                    request.getRequestDispatcher("/truck/updateTruck.jsp?isNotExist=true").forward(request, response);
                }
                request.getRequestDispatcher("/truck/updateTruckForm.jsp").forward(request, response);
                break;
            case "PayloadOverloaded":

                boolean isOverLoaded = false;
                double payload = Double.parseDouble(request.getParameter("payload"));
                if (truck != null) {
                    isOverLoaded = truckService.IsPayloadOverloaded(truck.getId(), payload);
                }

                request.getRequestDispatcher("/truck/checkPayloadOverloaded.jsp?isOverLoaded=" + isOverLoaded).forward(request, response);

                break;
        }

    }
}
