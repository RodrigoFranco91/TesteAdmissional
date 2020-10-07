<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alteração Aluno</title>
</head>
<body>
	<h1>Alterando Cadastro do Aluno: ID = ${aluno.id} - Nome = ${aluno.nome}</h1>
	<form action="alteraAluno">
		<input type="hidden" name="id" value="${aluno.id }" />
		
		<label >Nome:</label>
		<input type="text" name="nome" value="${aluno.nome}"/></br></br>
		
		<label>Matricula::</label>
		<input type="text" name="matricula" value="${aluno.matricula }"/></br></br>
		
		<input type="submit" value="Alterar">
	</form>
</body>
</html>