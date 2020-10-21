<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html style="height: 100%; min-height: 100%">
<head lang="pt-BR">
<meta charset="UTF-8">
<title>Alunos da Turma</title>
<link rel="stylesheet" href="./static/bootstrap/css/bootstrap.min.css">
</head>
<body class="bg-light" style="display: flex; flex-direction: column; min-height: 100%">
	<div class="container">
		<div class="py-5 text-center">
			<h1>Listagem dos Alunos da Turma com id: ${turma.id} e Sala: ${turma.sala}</h1>
			</br>
		</div>
		<h2>Dados da Turma:</h2>
		<form action="adicionaAluno">
			<div class="form-group ">
				<input class="form-control" type="hidden" name="id" value="${turma.id }" />
				<label for="sala">Sala:</label> 
				<input type="text" class="form-control" id="sala" name="sala" value="${turma.sala}" disabled="disabled"> </br>
				<label for="dataAbertura">Data de Abertura:</label> 
				<input type="date" class="form-control" id="dataAbertura" name="dataAbertura" value="${turma.dataAbertura}" disabled="disabled"> </br>
				<label for="dataEncerramento">Data de Encerramento:</label> 
				<input type="date" class="form-control" id="dataEncerramento" name="dataEncerramento" value="${turma.dataEncerramento}" disabled="disabled" > </br>
				<label for="professor" >Professor:</label> 
				<input type="text" class="form-control" id="professor" name="professor" value="${turma.professor.nome}" disabled="disabled" > </br>
			</div>
		</form>
		<h2>Alunos:</h2></br>
		<ul class="card-columns">
			<c:forEach items="${turma.alunos}" var="aluno">
					<li>${aluno.nome}</li>
			</c:forEach>
		</ul>
		<div class="text-right"></br>
			<a class="text-decoration-none" href="formAddAluno?id=${turma.id}">Adicionar Alunos</a></br>
			<a class="text-decoration-none" href="listaTurma">Remover Alunos</a></br>
			<a class="text-decoration-none" href="listaTurma">Listar Turmas Cadastradas</a></br>
			<a class="text-decoration-none" href="/">Voltar para página incial</a>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="./static/bootstrap/js/bootstrap.min.js"></script>
	<footer class="footer mt-auto py-1" style="background-color: #000; color: #FFF">
		<p class="text-center small">&copy;2020 Desenvolvido por Rodrigo Franco - Todos os direitos reservados.</p>
	</footer>
</body>
</html>