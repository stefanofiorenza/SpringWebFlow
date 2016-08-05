package corso.spring.wf2.demo.actions01.impl;

import org.springframework.webflow.core.collection.MutableAttributeMap;
import org.springframework.webflow.execution.Event;
import org.springframework.webflow.execution.RequestContext;
import org.springframework.webflow.scope.FlowScope;

import corso.spring.wf2.demo.actions.model.User;


public class UserActionPojo{

	public User echoUser(User userInserito){
		System.out.println("[UserActionPojo]:echoUser "+userInserito);
		if(userInserito.getNome().equals("Carlo")){
			return null;
		}
		return userInserito;
	}
	
	public User getUser(){
		
		User daRestituire= new User();
		daRestituire.setNome("StefanoPojo");
		daRestituire.setCognome("FiorenzaPojo");
		daRestituire.setEmail("stefanoPojo@email.it");
		daRestituire.setTelefono("068945830349Pojo");
		return daRestituire;
	}
	
	
	public void eseguiMetodoVoid(User userInserito){
		System.out.println("[UserActionPojo]:eseguiMetodoVoid"+userInserito);
		
	}
	
	public String metodoIndirizzo (Long id){
		System.out.println("[UserActionPojo]:metodoIndirizzo "+id);
		return "success";
	}
	
	public Event metodoRequestContextToEvent(RequestContext context){
		
		System.out.println("[UserActionPojo]:metodoRequestContextToEvent ");
		
		//Lettura RequestContext:
		
		
		
		//output Event:
		User daRestituire= new User();
		daRestituire.setNome("StefanoEvent");
		daRestituire.setCognome("FiorenzaEvent");
		daRestituire.setEmail("stefanoEvent@email.it");
		daRestituire.setTelefono("068945830349Event");
		
		Event nuovoEvent = new Event(daRestituire,"userEvent");
		return nuovoEvent;
	}
}
