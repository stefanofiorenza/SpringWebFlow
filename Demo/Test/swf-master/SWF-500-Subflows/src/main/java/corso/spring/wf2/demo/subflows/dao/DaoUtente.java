package corso.spring.wf2.demo.subflows.dao;

import java.util.ArrayList;
import java.util.List;

import corso.spring.wf2.demo.subflows.model.Utente;


public class DaoUtente {

	
	
	
	public Utente login(String username, String password){
		
		// restituisce risultato mock eco dati inseriti
		Utente ut= new Utente();
		
		if(username.equals("paolorossi")){
			return null;
		}
		ut.setUserName(username);
		ut.setPassword(password);
		ut.setRuolo("utenteRegistrato");
		
		return ut;
	}
}
