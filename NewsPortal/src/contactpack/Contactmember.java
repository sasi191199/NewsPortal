package contactpack;

public class Contactmember {
	private String uname,email,phone,address;
	public Contactmember()
	{
		super();
	}
	public Contactmember(String uname,  String email, String phone,String address) {
		super();
		this.uname = uname;
		
		this.email = email;
		this.phone = phone;
		this.address = address;
	}
	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
}
