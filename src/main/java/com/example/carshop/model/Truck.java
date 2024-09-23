package com.example.carshop.model;

public class Truck extends Vehicle{
	
	private double payloadCapacity;
	
	private double bedLength;

	public double getPayloadCapacity() {
		return payloadCapacity;
	}

	public void setPayloadCapacity(double payloadCapacity) {
		this.payloadCapacity = payloadCapacity;
	}

	public double getBedLength() {
		return bedLength;
	}

	public void setBedLength(double bedLength) {
		this.bedLength = bedLength;
	}

	@Override
	public String toString() {
		return super.toString()+", "+"PayloadCapacity=" + payloadCapacity + ", BedLength=" + bedLength + "]";
	}
	
	
	
}
