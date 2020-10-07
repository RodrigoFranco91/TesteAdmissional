<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Professores Cadastrados</title>
</head>
<body>
	<h1>Professores Cadastrados no Sistema:</h1>
	<table>
		<tr>
			<th>Id</th>
			<th>Nome</th>
			<th>Titulação</th>
			<th></th>
		</tr>
		<c:forEach items="${professores}" var="professor">
			<tr>
				<th>${professor.id}</th>
				<th>${professor.nome}</th>
				<th>${professor.titulacao}</th>
				<th></th>
				<td><a href="removeProfessor?id=${professor.id}">Deletar</a></td>
				<td><a href="atualizaProfessor?id=${professor.id}">Alterar</a></td>
			</tr>
		</c:forEach>
	</table>
	<a href="professor">Cadastrar novo Professor</a>
	<br />
	<br />
</body>
</html>