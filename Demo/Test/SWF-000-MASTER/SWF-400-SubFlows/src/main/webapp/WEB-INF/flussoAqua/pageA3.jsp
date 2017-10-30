<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background: aqua">
CAMPI FLUSSO Aqua: Recapiti
<form method="post" action="${flowExecutionUrl}&_eventId=end">
<table>
<tr>
<td>Telefono (fisso)</td>
<td><input type="text" name="telefono"></td>
</tr>
<tr>
<td>Cellulare</td>
<td><input type="text" name="cellulare"></td>
</tr>
<tr>
<td>Fax</td>
<td><input type="text" name="fax"></td>
</tr>
<tr>
<td>Email</td>
<td><input type="text" name="email"></td>
</tr>
<tr>
<td><input type="submit" value="conferma" /></td>
<td><input type="reset"  /></td>
</tr>
</table>

</form>
</body>
</html>