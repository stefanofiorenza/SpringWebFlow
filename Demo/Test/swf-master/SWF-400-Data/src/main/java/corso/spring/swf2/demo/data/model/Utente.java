package corso.spring.swf2.demo.data.model;

import java.io.Serializable;
import java.util.Date;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.binding.validation.ValidationContext;

public class Utente implements Serializable{

	String nome;
	String cognome;
	Date dataNascita;
	String via;
	String citta;
	String cap;
	String provincia;
	String telefono;
	String email;
	String fax;
	String cellulare;
	
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
	public Date getDataNascita() {
		return dataNascita;
	}
	public void setDataNascita(Date dataNascita) {
		this.dataNascita = dataNascita;
	}
	public String getVia() {
		return via;
	}
	public void setVia(String via) {
		this.via = via;
	}
	public String getCitta() {
		return citta;
	}
	public void setCitta(String citta) {
		this.citta = citta;
	}
	public String getCap() {
		return cap;
	}
	public void setCap(String cap) {
		this.cap = cap;
	}
	public String getProvincia() {
		return provincia;
	}
	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public String getCellulare() {
		return cellulare;
	}
	public void setCellulare(String cellulare) {
		this.cellulare = cellulare;
	}
	
	@Override
	public String toString() {
		return "Utente [cap=" + cap + ", cellulare=" + cellulare + ", citta="
				+ citta + ", cognome=" + cognome + ", dataNascita="
				+ dataNascita + ", email=" + email + ", fax=" + fax + ", nome="
				+ nome + ", provincia=" + provincia + ", telefono=" + telefono
				+ ", via=" + via + "]";
	}
	
	// name convention SWF2 validate{viewId}
	public void validateStart(ValidationContext context){
		 
		MessageContext messages = context.getMessageContext();
		if (dataNascita.after(new Date())) { // se la data di nascita e' futura.. da errore
            messages.addMessage(new MessageBuilder().error().source("dataNascita").
                defaultText("la data di nascita non puo' essere futura").build());
        } 		
	}
	
	
	
	
	
}
