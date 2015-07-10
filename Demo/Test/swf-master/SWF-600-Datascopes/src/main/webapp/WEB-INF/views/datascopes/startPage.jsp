<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Dati in viewState [StartPage]:<br/>
Nome: ${singoloUserSwf.nome} <br/>
Cognome: ${singoloUserSwf.cognome} <br/>
Email: ${singoloUserSwf.email} <br/>
Telefono: ${singoloUserSwf.telefono} <br/>	
<!-- use POST for the form! -->
<form method="post" action="${flowExecutionUrl}&_eventId=next">
	<input type="submit" name="_eventId_next" value="Next"/>
</form>	
		
</body>
</html>