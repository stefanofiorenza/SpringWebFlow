<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table border="1" style="font-family:sans-serif;border-color:navy;border-collapse:collapse;width:700px;">
			<thead>
				<th>Contesto</th>
				<th>NomeAttributo</th>
				<th>ValoreAttributo</th>
			</thead>
			<tbody>
			<!-- Start -->
			<tr>
				<td>ServletContext:</td>
				<td>applicationString</td>
				<td>${applicationScope["applicationString"]}</td>
			</tr>
			<tr>
				<td>HttpSession:</td>
				<td>sessionString</td>
				<td>${sessionScope.sessionString}</td>
			</tr>
			<tr>
				<td>HttpRequest:</td>
				<td>requestString</td>
				<td>${requestScope.var1}</td>
			</tr>
			</tbody>
		</table>
		
	

<%
//Solo per debug
//possibili scopes
String attr= (String)request.getAttribute("var1");
String attrSess = (String) session.getAttribute("attributoConversationScope");
String attributesContext = (String)application.getAttribute("attributoConversationScope");

System.out.println("request: "+attr);

%>		
	<h1>Scopes Flow Contexts (SWF2) </h1>
		<table border="1" style="font-family:sans-serif;border-color:navy;border-collapse:collapse;width:700px;">
			<thead>
				<th>Contesto</th>
				<th>NomeAttributo</th>
				<th>ValoreAttributo</th>
			</thead>
			<tbody>
			<!-- Start -->
			<tr>
				<td>FlowScope:</td>
				<td>attributoActiveFlow</td>
				<td>${attributoActiveFlow}</td>
			</tr>
			<tr>
				<td>ConversationScope:</td>
				<td>attributoConversationScope</td>
				<td>${attributoConversationScope}</td>
			</tr>
			<tr>
				<td>FlashScope:</td>
				<td>attributoFlashScope</td>
				<td>${attributoFlashScope}</td>
			</tr>
			<tr>
				<td>RequestScope:</td>
				<td>attributoRequestScope</td>
				<td>${attributoRequestScope}</td>
			</tr>
			<tr>
				<td>ViewScope:</td>
				<td>attributoViewScope</td>
				<td>${attributoViewScope}</td>
			</tr>			
			</tbody>
		</table>


	<!-- use POST for the form! -->
		<form method="post" action="${flowExecutionUrl}&_eventId=next">
			<input type="submit" name="_eventId_next" value="Next"/>
		</form>		
</body>
</html>