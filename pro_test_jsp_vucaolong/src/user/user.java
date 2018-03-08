package user;

import java.util.Date;

public class user {
	private int id;
	private String name;
	private Date birthDay;
	private String birthPlace;
	public user(int id, String name, Date birthDay, String birthPlace) {

		this.id = id;
		this.name = name;
		this.birthDay = birthDay;
		this.birthPlace = birthPlace;
	}
	public user() {

	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirthDay() {
		return birthDay;
	}
	public void setBirthDay(Date birthDay) {
		this.birthDay = birthDay;
	}
	public String getBirthPlace() {
		return birthPlace;
	}
	public void setBirthPlace(String birthPlace) {
		this.birthPlace = birthPlace;
	}
	
}
