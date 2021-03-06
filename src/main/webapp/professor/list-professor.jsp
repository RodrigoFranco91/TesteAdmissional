<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="height: 100%; min-height: 100%">
<head lang="pt-BR">
<meta charset="UTF-8">
<title>Listagem de Professores</title>
<link rel="stylesheet" href="./static/bootstrap/css/bootstrap.min.css">
</head>
<body class="bg-light" style="display: flex; flex-direction: column; min-height: 100%">
	<div class="container">
		<div class="py-5 text-center">
			<h1>Listagem de Todos os Professores Cadastrados no Sistema</h1>
			</br>
			<p class="lead">Escolha entre as opções de excluir ou alterar o cadastro de um professor:</p>
		</div>
		<table class="table table-striped table-dark">
		 	<thead>
				<tr>
					<th scope="col">Nome</th>
					<th scope="col">Titulação</th>
					<th scope="col"></th>
					<th scope="col"></th>
				</tr> 
			</thead>
			<tbody>
				<c:forEach items="${professores}" var="professor">
					<tr>
						<td>${professor.nome}</td>
						<td>${professor.titulacao}</td>
						<td><a href="atualizaProfessor?id=${professor.id}">Alterar</a></td>
						<td><a href="removeProfessor?id=${professor.id}">Deletar</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="text-right">
			<a class="text-decoration-none" href="professor">Cadastrar novo Professor</a></br>
			<a class="text-decoration-none" href="/">Voltar para página incial</a>
		</div>
		</br>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="./static/bootstrap/js/bootstrap.min.js"></script>
	<footer class="footer mt-auto py-1"
		style="background-color: #000; color: #FFF">
		<p class="text-center small">&copy;2020 Desenvolvido por Rodrigo
			Franco - Todos os direitos reservados.</p>
	</footer>
</body>
</html>