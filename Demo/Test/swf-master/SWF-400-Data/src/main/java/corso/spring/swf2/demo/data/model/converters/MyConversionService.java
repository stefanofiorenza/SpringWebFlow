package corso.spring.swf2.demo.data.model.converters;

import org.springframework.binding.convert.service.DefaultConversionService;

public class MyConversionService extends DefaultConversionService {

	@SuppressWarnings("deprecation")
	@Override
	protected void addDefaultConverters() {
		super.addDefaultConverters();
		
		//deprecato a partire da Spring 3.0
		addConverter("stringToDataConverterBean" ,new StringToDataConverter());
		
	}

	
}
