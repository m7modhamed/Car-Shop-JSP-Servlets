package com.example.carshop.Service;

import com.example.carshop.model.Vehicle;

import java.util.List;

public interface IVehicleService {

	public int addVehicle(Vehicle vehicle) ;
		
	public int updateVehicle(int id,Vehicle vehicle)   ;
	
	public int deleteVehicle(int id) ;
	
	public Vehicle getVehicle(int id) ;

	public List<? extends Vehicle> getAllVehicles();
	
	public int getVehicleCount();
	
}
