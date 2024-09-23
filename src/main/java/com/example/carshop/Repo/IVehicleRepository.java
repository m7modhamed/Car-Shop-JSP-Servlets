package com.example.carshop.Repo;


import com.example.carshop.model.Vehicle;
import java.util.List;

public interface IVehicleRepository {

	 int addVehicle(Vehicle vehicle);
		
	 int deleteVehicle(int id) ;
	
	 int UpdateVehicle(int id,Vehicle newCarData) ;
	
	 Vehicle getVehicle(int id) ;
	
	 int getVehicleCount() ;

	 List<? extends Vehicle> getAllVehicles();
}
