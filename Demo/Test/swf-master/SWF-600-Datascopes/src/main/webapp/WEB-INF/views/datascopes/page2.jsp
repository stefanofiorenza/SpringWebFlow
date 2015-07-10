<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.Enumeration"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>


<body>
<h1>Page2:</h1>
Dati in [userNew]<br/>
Nome: ${userNew.nome} <br/>
Cognome: ${userNew.cognome} <br/>
Email: ${userNew.email} <br/>
Telefono: ${userNew.telefono} <br/>
 <br/> <br/>
 
Dati in [userEcho]<br/>
Nome: ${userEcho.nome} <br/>
Cognome: ${userEcho.cognome} <br/>
Email: ${userEcho.email} <br/>
Telefono: ${userEcho.telefono} <br/>
<!-- use POST for the form! -->
<form method="post" action="${flowExecutionUrl}&_eventId=next">
	<input type="submit" name="_eventId_next" value="Next"/>
</form>	

		
</body>
</html>