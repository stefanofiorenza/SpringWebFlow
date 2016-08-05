package corso.spring.wf2.demo.actions01.impl;

import org.springframework.webflow.core.collection.LocalAttributeMap;
import org.springframework.webflow.core.collection.MutableAttributeMap;
import org.springframework.webflow.execution.Action;
import org.springframework.webflow.execution.Event;
import org.springframework.webflow.execution.RequestContext;
import org.springframework.webflow.scope.FlowScope;

import corso.spring.wf2.demo.actions.model.User;
import corso.spring.wf2.demo.actions.utils.DemoConstants;


public class UserAction implements Action{
	
	public Event execute(RequestContext context) throws Exception {
		
		//
		User daRestituire= new User();
		daRestituire.setNome("StefanoAction");
		daRestituire.setCognome("FiorenzaAction");
		daRestituire.setEmail("stefanoAction@email.it");
		daRestituire.setTelefono("068945830349Action");
		
		//1) Soluzione contesti SWF2
		context.getFlowScope().put(DemoConstants.DEMO_ACTION_KEY_USER_EVENT,daRestituire);
		return null;
		
		//2) Event come wrapper risultato + oggetti
//		MutableAttributeMap attributi = new LocalAttributeMap();
//		attributi.put("daRestituire", daRestituire);
//		Event outcome= new Event(this,"action",attributi);
//		return outcome;
		
	}

	
	
	
}
