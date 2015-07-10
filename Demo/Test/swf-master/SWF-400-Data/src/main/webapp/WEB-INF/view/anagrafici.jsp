<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="font-family: sans-serif; font-size: 14px">
<b>REGISTRAZIONE UTENTE</b>
<form method="post" action="${flowExecutionUrl}&_eventId=next">
<table>
<tr>
<td>Nome</td>
<td><input type="text" name="nome"></td>
</tr>
<tr>
<td>Cognome</td>
<td><input type="text" name="cognome"></td>
</tr>
<tr>
<td>Data di nascita</td>
<td><input type="text" name="dataNascita"></td>
</tr>
<tr>
<td><input type="submit" value="next" /></td>
<td><input type="reset" value="annulla" /></td>
</tr>
</table>

</form>
</body>
</html>