<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html style="height: 100%; min-height: 100%">
<head lang="pt-BR">
<meta charset="UTF-8">
<title>Listagem de Turmas</title>
<link rel="stylesheet" href="./static/bootstrap/css/bootstrap.min.css">
</head>
<body class="bg-light" style="display: flex; flex-direction: column; min-height: 100%">
	<div class="container">
		<div class="py-5 text-center">
			<h1>Listagem de Todos as Turmas Cadastradas no Sistema</h1>
			</br>
			<p class="lead">Escolha a Turma que se deseja Adicionar e/ou remover Alunos:</p>
		</div>
		<table class="table table-striped table-dark">
		 	<thead>
				<tr>
					<th scope="col">Sala</th>
					<th scope="col"  class="text-center">Data de Abertura</th>
					<th scope="col"  class="text-center">Data de Encerramento</th>
					<th scope="col"  class="text-center">Professor</th>
					<th></th>
					<th></th>
				    <th></th>
				</tr> 
			</thead>
			<tbody>
				<c:forEach items="${turmas}" var="turma">
					<tr>
						<td>${turma.sala}</td>
						<td  class="text-center"><fmt:formatDate value="${turma.dataAbertura}" pattern="dd/MM/yyyy"/></td>
						<td  class="text-center"><fmt:formatDate value="${turma.dataEncerramento}" pattern="dd/MM/yyyy"/></td>
						<td  class="text-center">${turma.professor.nome}</td>
						<td><a href="verAlunos?id=${turma.id}">Ver Alunos</a></td>
						<td><a href="formAddAluno?id=${turma.id}">Adicionar Alunos</a></td>
						<td><a href="formRemoveAluno?id=${turma.id}">Remover Alunos</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="text-right">
			<a class="text-decoration-none" href="turma">Cadastrar nova turma</a></br>
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