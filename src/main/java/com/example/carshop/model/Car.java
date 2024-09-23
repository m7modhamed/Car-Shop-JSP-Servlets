package com.example.carshop.model;

public class Car extends Vehicle{
	
	
	private short passengerCapacity;
	
    public static final double INSURANCE_RATE = 3.5;


	public short getPassengerCapacity() {
		return passengerCapacity;
	}

	public void setPassengerCapacity(short passengerCapacity) {
		this.passengerCapacity = passengerCapacity;
		
	}

	@Override
	public String toString() {
		return super.toString()+", " + "PassengerCapacity=" + passengerCapacity + "]";
	}
	
	
	
}
