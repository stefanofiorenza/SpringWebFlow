<%@ page language="java" session="false" contentType="text/html; charset=UTF-8" %>

<?xml version="1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Page 1</title>
	</head>
	<body>
		<h1>User On Start:</h1>
		<table>
		<tr>
			<td>Nome:</td>
			<td><input type="text" name="nome" value=${userStartFlow.nome} /></td>
		</tr>
		<tr>
			<td>cognome:</td>
			<td><input type="text" name="cognome" value=${userStartFlow.cognome} /></td>
		</tr>		
		<tr>		
			<td>telefono </td>
			<td><input type="text" name="telefono" value=${userStartFlow.telefono} /></td>
		</tr>
		<tr>
			<td>E-mail:</td>
			<td><input type="text" name="email" value=${userStartFlow.email} /></td>
		</tr>		
	</table>
	
	<h1>User On Render:</h1>
		<table>
		<tr>
			<td>Nome:</td>
			<td><input type="text" name="nome" value=${userRender.nome} /></td>
		</tr>
		<tr>
			<td>cognome:</td>
			<td><input type="text" name="cognome" value=${userRender.cognome} /></td>
		</tr>		
		<tr>		
			<td>telefono </td>
			<td><input type="text" name="telefono" value=${userRender.telefono} /></td>
		</tr>
		<tr>
			<td>E-mail:</td>
			<td><input type="text" name="email" value=${userRender.email} /></td>
		</tr>
		</table>
	
	<!-- use POST for the form! -->
	<table>
	<tr>
		<td>
			<form method="post" action="${flowExecutionUrl}&_eventId=getUser1">
					<input type="submit" value="User1"/>
			</form>
		</td>
		<td>
			<form method="post" action="${flowExecutionUrl}&_eventId=getUser2">
				<input type="submit" value="User2"/>
			</form>
		</td>
		<td>
			<form method="post" action="${flowExecutionUrl}&_eventId=getUser3">
				<input type="submit" value="User3"/>
			</form>
		</td>
		</tr>
	</table>
		
		
	</body>
</html>
