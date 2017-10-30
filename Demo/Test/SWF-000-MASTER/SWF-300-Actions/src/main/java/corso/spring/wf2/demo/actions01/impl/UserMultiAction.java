package corso.spring.wf2.demo.actions01.impl;

import org.springframework.webflow.action.MultiAction;
import org.springframework.webflow.core.collection.MutableAttributeMap;
import org.springframework.webflow.execution.Event;
import org.springframework.webflow.execution.RequestContext;
import org.springframework.webflow.scope.FlowScope;

import corso.spring.wf2.demo.actions.model.User;
import corso.spring.wf2.demo.actions.utils.DemoConstants;


public class UserMultiAction extends MultiAction{

	
	public Event metodoInput(RequestContext requestContext){
		
		return null;
	}
	
	public Event echoUser(User userInserito){
		//User userInserito=(User)context.get("user");
		System.out.println("[UserAction]:echoUser"+userInserito);
		Event output= new Event(userInserito,"userReturn");
		return output;
	}
	
	public Event getUser(RequestContext context){
		
		User daRestituire= new User();
		daRestituire.setNome("StefanoMultiAction");
		daRestituire.setCognome("FiorenzaMultiAction");
		daRestituire.setEmail("stefanoMultiAction@email.it");
		daRestituire.setTelefono("068945830349MultiAction");
		
		context.getFlowScope().put(DemoConstants.DEMO_ACTION_KEY_USER_EVENT,daRestituire);
		return null; 		
	}
}
