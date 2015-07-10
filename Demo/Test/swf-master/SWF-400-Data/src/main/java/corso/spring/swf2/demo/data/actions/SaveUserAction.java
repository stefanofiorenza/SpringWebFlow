package corso.spring.swf2.demo.data.actions;

import org.springframework.binding.message.Message;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageResolver;
import org.springframework.webflow.core.collection.LocalAttributeMap;
import org.springframework.webflow.core.collection.MutableAttributeMap;
import org.springframework.webflow.core.collection.ParameterMap;
import org.springframework.webflow.execution.Action;
import org.springframework.webflow.execution.Event;
import org.springframework.webflow.execution.RequestContext;

import corso.spring.swf2.demo.data.dao.DaoUtente;
import corso.spring.swf2.demo.data.dao.exceptions.DaoException;
import corso.spring.swf2.demo.data.model.Utente;

public class SaveUserAction {

	
	public String saveUser (Utente utente,RequestContext context){
		
		try{
			DaoUtente dao = new DaoUtente();
			dao.save(utente);
			return "success";
			
		}catch (DaoException ecc){
			ecc.printStackTrace();			
			context.getMessageContext().addMessage(new MessageBuilder().error().defaultText(ecc.getMessage()).build());
		    return "error";
		}
		
		
	}
	
	
}
