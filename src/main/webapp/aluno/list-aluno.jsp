<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alunos Cadastrados</title>
</head>
<body>
	<h1>Alunos Cadastrados no Sistema:</h1>
	<table>
		<tr>
			<th>Id</th>
			<th>Nome</th>
			<th>Matricula</th>
			<th></th>
		</tr>
		<c:forEach items="${alunos}" var="aluno">
			<tr>
				<th>${aluno.id}</th>
				<th>${aluno.nome}</th>
				<th>${aluno.matricula}</th>
				<th></th>
				<td><a href="removeAluno?id=${aluno.id}">Deletar</a></td>
				<td><a href="atualizaAluno?id=${aluno.id}">Alterar</a></td>
			</tr>
		</c:forEach>
	</table>
	<a href="aluno">Cadastrar novo Aluno</a>
	<br />
	<br />
</body>
</html>