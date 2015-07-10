<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background: aqua">
CAMPI FLUSSO Aqua:A1
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
<td><input type="submit" name="" value="next" /></td>
<td><input type="reset" name="" /></td>
</tr>
</table>

</form>
</body>
</html>