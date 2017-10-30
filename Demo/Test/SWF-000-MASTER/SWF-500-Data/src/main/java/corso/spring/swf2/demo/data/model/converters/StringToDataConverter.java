package corso.spring.swf2.demo.data.model.converters;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.binding.convert.converters.StringToObject;


public class StringToDataConverter extends StringToObject {

	// definisco il tipo di object che sara' restituito
	public StringToDataConverter() {
		super(Date.class);
	}

	@Override
	protected Object toObject(String parameter, Class classe) throws Exception {

		DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		Date data=null;
        try {
        	data= dateFormat.parse(parameter);
            
       } catch (ParseException e) {
            e.printStackTrace();
       }
       return data;
	}

	@Override
	protected String toString(Object obj) throws Exception {
		Date data =(Date)obj;
		int mese= data.getMonth()+1;
		int anno= data.getYear()+1900;
		return ""+data.getDate()+"-"+mese+"-"+anno;
	}


	
}
