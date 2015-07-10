<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.Enumeration"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>


<body>
<h1>Page1:</h1>

Dati in sessione Http: [singoloUserServlet]<br/>
Nome: ${singoloUserServlet.nome} <br/>
Cognome: ${singoloUserServlet.cognome} <br/>
Email: ${singoloUserServlet.email} <br/>
Telefono: ${singoloUserServlet.telefono} <br/>
<br/><br/>
<b>Dati in conversationScope.userGroup III User</b><br/>
Nome: ${userGroupConversation.users[3].nome}<br/>
Cognome: ${userGroupConversation.users[3].cognome}<br/>
Email: ${userGroupConversation.users[3].email}<br/>
Telefono: ${userGroupConversation.users[3].telefono}<br/>




<!-- use POST for the form! -->
		<form method="post" action="${flowExecutionUrl}&_eventId=next">
			<input type="submit" name="_eventId_next" value="Next"/>
		</form>	

		
</body>
</html>