package com.example.carshop.Service;


public interface ITruckService extends IVehicleService{

	
    public boolean IsPayloadOverloaded(int id, double payload) ;

}
