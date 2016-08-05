package corso.spring.wf2.demo.actions.model;

import java.io.Serializable;

public class User implements Serializable{

	@Override
	public String toString() {
		return "User [cognome=" + cognome + ", email=" + email + ", nome="
				+ nome + ", telefono=" + telefono + "]";
	}
	private String nome;
	private String cognome;
	private String email;
	private String telefono;
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
}
