package corso.spring.wf2.demo.subflows.actions;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.webflow.core.collection.LocalAttributeMap;
import org.springframework.webflow.core.collection.MutableAttributeMap;
import org.springframework.webflow.core.collection.ParameterMap;
import org.springframework.webflow.execution.Action;
import org.springframework.webflow.execution.Event;
import org.springframework.webflow.execution.RequestContext;

import corso.spring.wf2.demo.subflows.dao.DaoUtente;
import corso.spring.wf2.demo.subflows.model.Utente;

public class LoginAction implements Action{

	
	public Event execute(RequestContext contesto) throws Exception {
		try{
			ParameterMap parameters=contesto.getRequestParameters();
			String username=parameters.get("username");
			String password=parameters.get("password");
			DaoUtente dao = new DaoUtente();
			Utente utente=dao.login(username, password);			
			Event outcome=null;
			
			if(utente==null){
				outcome= new Event(this,"utenteNonRegistrato");
				
			}else{
				MutableAttributeMap attributi = new LocalAttributeMap();
				attributi.put("utente", utente);
				outcome= new Event(this,"successo",attributi);
			}
			return outcome;		
			
		}catch (Exception ecc){
			
			contesto.getMessageContext().addMessage(new MessageBuilder().error()
		               .defaultText(ecc.getMessage()).build());			
			return new Event(this,"eccezione");
		}
		
		
	}
	
	
}
