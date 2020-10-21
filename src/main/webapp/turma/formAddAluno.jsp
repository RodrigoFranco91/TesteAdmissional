<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html style="height: 100%; min-height: 100%">
<head lang="pt-BR">
<meta charset="UTF-8">
<title>Adicionar Alunos</title>
<link rel="stylesheet" href="./static/bootstrap/css/bootstrap.min.css">
</head>
<body class="bg-light" style="display: flex; flex-direction: column; min-height: 100%">
	<div class="container">
		<div class="py-5 text-center">
			<h1>Formulário de Turma para Adicionar Alunos</h1>
			</br>
		</div>
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
			<h2>Selecione os Alunos que se deseja incluir na Turma:</h2></br>
			<div  class="row" >
				    <c:forEach items="${alunos}" var="aluno">
				    <div class="col-4">
 						<input type='checkbox' name='alunos' value='${aluno.id}'}/> ${aluno.nome} </br>
 					</div>
            	</c:forEach>
			</div>
			<div class="text-right">
				<button type="submit" class="btn btn-primary">Adicionar Alunos</button>
			</div>
		</form>
		<div class="text-center"></br>
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