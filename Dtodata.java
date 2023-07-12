package com.session;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Dtodata
{
	@Id
	private int carno;
	private String carname;
	private int carprice;
	
	public int getCarno() {
		return carno;
	}
	public void setCarno(int carno) {
		this.carno = carno;
	}
	public String getCarname() {
		return carname;
	}
	public void setCarname(String carname) {
		this.carname = carname;
	}
	public int getCarprice() {
		return carprice;
	}
	public void setCarprice(int carprice) {
		this.carprice = carprice;
	}
}
