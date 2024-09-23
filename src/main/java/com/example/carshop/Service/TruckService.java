package com.example.carshop.Service;

import com.example.carshop.Repo.IVehicleRepository;
import com.example.carshop.Repo.TruckRepository;
import com.example.carshop.model.Truck;
import com.example.carshop.model.Vehicle;

import java.util.List;

public class TruckService implements ITruckService{

	IVehicleRepository truckRepo=new TruckRepository();
	
	
	@Override
	public int addVehicle(Vehicle vehicle) {
		
			return truckRepo.addVehicle(vehicle);
		
	}


	
	@Override
	public int updateVehicle(int id,Vehicle newcarData)   {
		
		return truckRepo.UpdateVehicle(id , newcarData);
	}

	@Override
	public int deleteVehicle(int id) {
		return truckRepo.deleteVehicle(id);

	}

	@Override
	public Vehicle getVehicle(int id)  {

		return truckRepo.getVehicle(id);

		
	}


	

	@Override
	public int getVehicleCount() {
		return truckRepo.getVehicleCount();

	}



	@Override
	public List<? extends Vehicle> getAllVehicles() {
		
		return truckRepo.getAllVehicles();
		
	}
	
	
	@Override
	public boolean IsPayloadOverloaded(int id, double payload)  {
		Truck truck=(Truck) getVehicle(id);

		
		return payload > truck.getPayloadCapacity();
	}

	
}
	