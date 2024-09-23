package com.example.carshop.Service;


import com.example.carshop.Repo.CarRepository;
import com.example.carshop.Repo.IVehicleRepository;
import com.example.carshop.model.Car;
import com.example.carshop.model.Vehicle;

import java.util.List;

public class CarService implements ICarService{

	IVehicleRepository carRepo=new CarRepository();
	
	@Override
	public int addVehicle(Vehicle vehicle) {
		
			return carRepo.addVehicle(vehicle);
		
	}


	
	@Override
	public int updateVehicle(int id,Vehicle newcarData)   {
		
		return carRepo.UpdateVehicle(id , newcarData);
	}

	@Override
	public int deleteVehicle(int id) {
		return carRepo.deleteVehicle(id);

	}

	@Override
	public Vehicle getVehicle(int id)  {

		return carRepo.getVehicle(id);

		
	}


	

	@Override
	public int getVehicleCount() {
		return carRepo.getVehicleCount();

	}



	@Override
	public double calculateInsuranceCost(int id)  {
		
		Car car=(Car) getVehicle(id);
		
		return car.getPrice() * Car.INSURANCE_RATE / 100;
	}



	@Override
	public List<? extends Vehicle> getAllVehicles() {
		
		return carRepo.getAllVehicles();
		
	}

	

	

}
