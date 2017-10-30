<%@ page language="java" session="false" contentType="text/html; charset=UTF-8" %>

<?xml version="1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Page 1</title>
	</head>
	<body>
		<h1>Users inseriti:</h1>
		
		<table border="1" style="font-family:sans-serif;border-color:navy;border-collapse:collapse;width:700px;">
			<thead>
				<th>Contesto</th>
				<th>Nome</th>
				<th>Cognome</th>
				<th>Telefono</th>
				<th>Email</th>
			</thead>
			<tbody>
			<!-- Start -->
			<tr>
				<td>StartFlow:</td>
				<td>${listUsersResult[0].nome}</td>
				<td>${listUsersResult[0].cognome}</td>
				<td>${listUsersResult[0].telefono}</td>
				<td>${listUsersResult[0].email}</td>
			</tr>
			<tr>
				<td>startStateUser:</td>
				<td>${listUsersResult[1].nome}</td>
				<td>${listUsersResult[1].cognome}</td>
				<td>${listUsersResult[1].telefono}</td>
				<td>${listUsersResult[1].email}</td>
			</tr>
			<tr>
				<td>renderUser:</td>
				<td>${listUsersResult[2].nome}</td>
				<td>${listUsersResult[2].cognome}</td>
				<td>${listUsersResult[2].telefono}</td>
				<td>${listUsersResult[2].email}</td>
			</tr>
			<tr>
				<td>transitionUser:</td>
				<td>${listUsersResult[3].nome}</td>
				<td>${listUsersResult[3].cognome}</td>
				<td>${listUsersResult[3].telefono}</td>
				<td>${listUsersResult[3].email}</td>
			</tr>
			<tr>
				<td>exitStateUser:</td>
				<td>${listUsersResult[4].nome}</td>
				<td>${listUsersResult[4].cognome}</td>
				<td>${listUsersResult[4].telefono}</td>
				<td>${listUsersResult[4].email}</td>
			</tr>
			</tbody>			
	</table>
	
	</body>
</html>
