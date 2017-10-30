<html>
<head>
<title>Conferma Inserimenti </title>
</head>
<body>

<h1>USER CONFERMA</h1>

Operazione conclusa con successo
Dati Inseriti:<br/>
Nome: ${requestScope.userReturn.nome}<br/>
Cognome:${requestScope.userReturn.cognome}<br/>
Email:${requestScope.userReturn.email}<br/>
Telefono:${requestScope.userReturn.telefono}<br/>

<h3>Request Scope (key==values)</h3>
<%
	java.util.Enumeration<String> reqEnum = request.getAttributeNames();
	while (reqEnum.hasMoreElements()) {
		String s = reqEnum.nextElement();
		out.print(s);
		out.println("==" + request.getAttribute(s));
		out.println("<br />");
	}
%>

<h3>Session Scope (key==values)</h3>
<%
	java.util.Enumeration<String> sessionEnum = session.getAttributeNames();
	while (sessionEnum.hasMoreElements()) {
		String s = sessionEnum.nextElement();
		out.print(s);
		out.println("==" + session.getAttribute(s));
		out.println("<br />");
	}
%>
</body>
</html>
