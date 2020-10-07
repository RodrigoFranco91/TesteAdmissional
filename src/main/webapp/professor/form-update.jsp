<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alteração Professor</title>
</head>
<body>
	<h1>Alterando Cadastro do Professor: ID = ${professor.id} - Nome = ${professor.nome}</h1>
	<form action="alteraProfessor">
		<input type="hidden" name="id" value="${professor.id }" />
		
		<label >Nome:</label>
		<input type="text" name="nome" value="${professor.nome}"/></br></br>
		
		<label>Titulção:</label>
		<input type="text" name="titulacao" value="${professor.titulacao }"/></br></br>
		
		<input type="submit" value="Alterar">
	</form>
</body>
</html>