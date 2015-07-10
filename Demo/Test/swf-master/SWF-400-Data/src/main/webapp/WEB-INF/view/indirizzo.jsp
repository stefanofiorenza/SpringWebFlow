<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="font-family:sans-serif;font-size:14px;">
<b>INDIRIZZO</b>
<form method="post" action="${flowExecutionUrl}&_eventId=next">
<table>
<tr>
<td>Via</td>
<td><input type="text" name="via"></td>
</tr>
<tr>
<td>Citta</td>
<td><input type="text" name="citta"></td>
</tr>
<tr>
<td>CAP</td>
<td><input type="text" name="cap"></td>
</tr>
<tr>
<td>Provincia</td>
<td><input type="text" name="provincia"></td>
</tr>
<tr>
<td><input type="submit"  value="conferma" /></td>
<td><input type="reset"  /></td>
</tr>
</table>

</form>
</body>
</html>