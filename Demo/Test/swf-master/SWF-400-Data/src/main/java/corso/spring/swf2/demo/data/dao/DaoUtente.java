package corso.spring.swf2.demo.data.dao;

import java.util.ArrayList;
import java.util.List;

import corso.spring.swf2.demo.data.dao.exceptions.DaoException;
import corso.spring.swf2.demo.data.model.Utente;


public class DaoUtente {

	
	public void save(Utente utente) throws DaoException{
		
		if(utente.getNome().equals("paolo")){
			throw new DaoException("utente gia presente nel DB");
		}
		// Logga l'oggetto da salvare su DB:
		System.out.println("[DaoUtente]: salvo sul DB oggetto \n"+utente);
		
	}
}
