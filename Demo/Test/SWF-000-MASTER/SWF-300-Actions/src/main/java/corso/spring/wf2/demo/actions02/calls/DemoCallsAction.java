package corso.spring.wf2.demo.actions02.calls;

import java.util.ArrayList;
import java.util.List;

import org.springframework.webflow.execution.RequestContext;

import corso.spring.wf2.demo.actions.model.User;

public class DemoCallsAction {

	public User getUser1(){
		
		User daRestituire= getUserTemplate("user1");
		return daRestituire;
	}
	
	public User getUser2(){
		
		User daRestituire= getUserTemplate("user2");
		return daRestituire;
	}

	public User getUser3(){
	
		User daRestituire= getUserTemplate("user3");
		return daRestituire;
	}
	
	public User getUserTransition(){
		User daRestituire= getUserTemplate("transition");
		return daRestituire;
	}
	
	public User getUserStartFlow(){
		
		User daRestituire= getUserTemplate("startFlow");
		return daRestituire;
	}
	
	public User getUserStartState(){
		
		User daRestituire= getUserTemplate("startState");
		return daRestituire;
	}
	
	public List getUsersEndState(RequestContext context){
		
		List usersDaRestituire= new ArrayList();
		User startFlowUser =(User)context.getFlowScope().get("startFlowUser");
		User startStateUser =(User)context.getFlowScope().get("startStateUser");
		User renderUser =(User)context.getFlowScope().get("renderUser");
		User transitionUser =(User)context.getFlowScope().get("user");
		User exitStateUser =getUserTemplate("exitStateUser");
		
		usersDaRestituire.add(startFlowUser);
		usersDaRestituire.add(startStateUser);
		usersDaRestituire.add(renderUser);
		usersDaRestituire.add(transitionUser);
		usersDaRestituire.add(exitStateUser);
		
		return usersDaRestituire;
	}
	
	public User getUserRender(){
		
		User daRestituire= getUserTemplate("render");
		return daRestituire;
	}
	
	public void endFlowLogic(){
		
		System.out.println("[endFlowLogic]:Restituzione lock e chiusura transazione...");
		System.out.println("[endFlowLogic]: chiusura flow");
		
	}
	
	private User getUserTemplate(String entryPoint){
		
		User daRestituire= new User();
		daRestituire.setNome(entryPoint);
		daRestituire.setCognome(entryPoint+"Cognome");
		daRestituire.setEmail(entryPoint+"@email.it");
		daRestituire.setTelefono("068945830349"+entryPoint);
		return daRestituire;
	}
	
	
}
