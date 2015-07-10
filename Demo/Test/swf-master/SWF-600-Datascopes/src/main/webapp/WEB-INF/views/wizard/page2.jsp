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

<h1>Scopes Servlet API: HttpRequest:</h1><BR/>
<br/>
<table border="1" style="font-family:sans-serif;border-color:navy;border-collapse:collapse;width:500px;">
	<%
	  Enumeration eParams  = request.getAttributeNames();
	  while(eParams.hasMoreElements())
	  {
	    String strParam = (String)eParams.nextElement();
		out.print("<tr>");
		out.println("<td>"+strParam+"</td>");
		out.println("<td><b>"+request.getAttribute(strParam)+"</b></td>");
		out.print("</tr>");
	  }
	%>
</table>
<br/>
<br/>
<br/>
<h1>Scopes Servlet Api:HttpSession</h1><BR/>
<br/>
<table border="1" style="font-family:sans-serif;border-color:navy;border-collapse:collapse;width:500px;">
	<%
	  Enumeration sessionParams  = session.getAttributeNames();
	  while(sessionParams.hasMoreElements())
	  {
	    String sessionParam = (String)sessionParams.nextElement();
		out.print("<tr>");
		out.println("<td>"+sessionParam+"</td>");
		out.println("<td><b>"+session.getAttribute(sessionParam)+"</b></td>");
		out.print("</tr>");
	  }
	%>
</table>		

<h1>Scopes Servlet API: ServletContext:</h1><BR/>
<table border="1" style="font-family:sans-serif;border-color:navy;border-collapse:collapse;width:500px;">
	<%
	  Enumeration contextParams  = application.getAttributeNames();
	  while(contextParams.hasMoreElements())
	  {
	    String contextParameter = (String)contextParams.nextElement();
		out.print("<tr>");
		out.println("<td>"+contextParameter+"</td>");
		out.println("<td><b>"+application.getAttribute(contextParameter)+"</b></td>");
		out.print("</tr>");
	  }
	%>
</table>			

<!-- use POST for the form! -->
		<form method="post" action="${flowExecutionUrl}&_eventId=next">
			<input type="submit" name="_eventId_next" value="Next"/>
		</form>	

		
</body>
</html>