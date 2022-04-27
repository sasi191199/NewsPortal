package feedbackpack;

public class Feedbackpojo {
	private String contact_nom,contact_email,contact_sujet,contact_message;
	public Feedbackpojo()
	{
		super();
	}
	public Feedbackpojo(String contact_nom, String contact_email, String contact_sujet, String contact_message) {
		super();
		this.contact_nom = contact_nom;
		
		this.contact_email = contact_email;
		this.contact_sujet = contact_sujet;
		this.contact_message = contact_message;
	}

	public String getContact_nom() {
		return contact_nom;
	}

	public void setContact_nom(String contact_nom) {
		this.contact_nom = contact_nom;
	}

	public String getContact_email() {
		return contact_email;
	}

	public void setContact_email(String contact_email) {
		this.contact_email = contact_email;
	}

	public String getContact_sujet() {
		return contact_sujet;
	}

	public void setContact_sujet(String contact_sujet) {
		this.contact_sujet = contact_sujet;
	}

	public String getContact_message() {
		return contact_message;
	}

	public void setContact_message(String contact_message) {
		this.contact_message = contact_message;
	}
	
}
