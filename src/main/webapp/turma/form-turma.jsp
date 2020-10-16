<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html style="height: 100%; min-height: 100%">
<head lang="pt-BR">
<meta charset="UTF-8">
<title>Cadastro de Turma</title>
<link rel="stylesheet" href="./static/bootstrap/css/bootstrap.min.css">
</head>
<body class="bg-light" style="display: flex; flex-direction: column; min-height: 100%">
	<div class="container">
		<div class="py-5 text-center">
			<h1>Formulário de Turma</h1>
			</br>
			<p class="lead">Digite o(s) dado(s) da Turma que se deseja cadastrar:</p>
		</div>
		<form action="cadastroTurma">
			<div class="form-group ">
				<label for="sala">Sala:</label> 
				<input type="text" class="form-control" id="sala" name="sala"> </br>
				<label for="dataAbertura">Data de Abertura:</label> 
				<input type="date" class="form-control" id="dataAbertura" name="dataAbertura"> </br>
				<label for="dataEncerramento">Data de Encerramento:</label> 
				<input type="date" class="form-control" id="dataEncerramento" name="dataEncerramento"> </br>
				<label >Professor:</label> 
           		<select name="professor.id">
           			<option hidden disabled selected value> -- Selecione um professor -- </option>
                	<c:forEach items="${professores}" var="professor">
                    	<option value="${professor.id}">${professor.nome}</option>
                	</c:forEach>
            </select>
			</div>
			<div class="text-right">
				<button type="submit" class="btn btn-primary">Cadastrar</button>
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