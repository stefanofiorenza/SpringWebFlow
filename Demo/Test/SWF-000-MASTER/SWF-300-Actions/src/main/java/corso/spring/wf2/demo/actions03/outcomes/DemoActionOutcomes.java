package corso.spring.wf2.demo.actions03.outcomes;

import java.util.ArrayList;
import java.util.List;

import org.springframework.webflow.execution.RequestContext;

import corso.spring.wf2.demo.actions.model.SettimanaEnum;
import corso.spring.wf2.demo.actions.model.User;

public class DemoActionOutcomes {

	
	public Boolean outcomeBooleanObject (){
		return new Boolean(true);
	}
	
	public String outcomeString(){
		return "successo";
	}
	
	public User outcomeObject(){
		User daRestituire= new User();
		daRestituire.setNome("StefanoPojo");
		daRestituire.setCognome("FiorenzaPojo");
		daRestituire.setEmail("stefanoPojo@email.it");
		daRestituire.setTelefono("068945830349Pojo");
		return daRestituire;
	}
	
	public SettimanaEnum outcomeEnum(){
		System.out.println(SettimanaEnum.LUNEDI.name());
		return SettimanaEnum.LUNEDI;
	}
	
	
}
