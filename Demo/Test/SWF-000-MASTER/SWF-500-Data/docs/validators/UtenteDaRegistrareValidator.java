package corso.spring.swf2.demo.data.model.validators;

import java.util.Date;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.binding.validation.ValidationContext;

import corso.spring.swf2.demo.data.model.Utente;

public class UtenteDaRegistrareValidator {

	public void validateStart(Utente utente,ValidationContext context){
		 
		MessageContext messages = context.getMessageContext();
		if (utente.getDataNascita().after(new Date())) { // se la data di nascita e' futura.. da errore
            messages.addMessage(new MessageBuilder().error().source("dataNascita").
                defaultText("la data di nascita non puo' essere futura").build());
        } 		
	}
}
