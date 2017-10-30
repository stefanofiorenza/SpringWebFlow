<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="font-family:sans-serif;font-size:14px;">

<b>RIEPILOGO DATI INSERITI</b><BR/>

<fieldset>
<legend><b>ANAGRAFICI</b></legend>
<table width="360px">
	<tr>
	<td width="160px">Nome</td>
	<td width="200px"><input type="text" value="${utente.nome}"></td>
	</tr>
	<tr>
	<td>Cognome</td>
	<td><input type="text" value="${utente.cognome}"></td>
	</tr>
	<tr>
	<td>Data di nascita</td>
	<td><input type="text" value="${utente.dataNascita}"></td>
	</tr>
</table>
</fieldset>
<br/>
<fieldset>
<legend><b>INDIRIZZO</b></legend>
<table width="360px">	
	<tr>
	<td width="160px">Via</td>
	<td width="200px"><input type="text" value="${utente.via}"></td>
	</tr>
	<tr>
	<td>Citta</td>
	<td><input type="text" value="${utente.citta}"></td>
	</tr>
	<tr>
	<td>CAP</td>
	<td><input type="text" value="${utente.cap}"></td>
	</tr>
	<tr>
	<td>Provincia</td>
	<td><input type="text" value="${utente.provincia}"></td>
	</tr>
</table>
</fieldset>
<br/>
<fieldset>
<legend><b>CONTATTI</b></legend>
	<table width="360px">
	<tr>
	<td width="160px">Telefono (fisso)</td>
	<td width="200px"><input type="text" value="${utente.telefono}"></td>
	</tr>
	<tr>
	<td>Cellulare</td>
	<td><input type="text" value="${utente.cellulare}"></td>
	</tr>
	<tr>
	<td>Fax</td>
	<td><input type="text" value="${utente.fax}" /></td>
	</tr>
	<tr>
	<td>Email</td>
	<td><input type="text" value="${utente.email}" /></td>
	</tr>
	</table>
</fieldset>

<form method="post" action="${flowExecutionUrl}&_eventId=conferma">
			<input type="submit" value="Conferma"/>
</form>

</body>
</html>