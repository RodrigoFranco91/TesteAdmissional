<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="height: 100%; min-height: 100%">
<head lang="pt-BR">
<meta charset="UTF-8">
<title>Atualizando Professor</title>
<link rel="stylesheet" href="./static/bootstrap/css/bootstrap.min.css">
</head>
<body class="bg-light" style="display: flex; flex-direction: column; min-height: 100%">
	<div class="container">
		<div class="py-5 text-center">
				<h1>Alterando Cadastro de Professor</h1>
			</br>
			<p class="lead">Atualize o(s) dado(s) do Professor: ${professor.nome}.</p>
		</div>
		<form action="alteraProfessor">
			<div class="form-group">
				<input class="form-control" type="hidden" name="id" value="${professor.id }" /> 
				<label for="nome">Nome:</label> 
				<input type="text" class="form-control" id="nome" name="nome" value="${professor.nome}"> </br>
				<label for="titulacao">Titulação:</label> 
				<select class="form-control" id="titulacao" name="titulacao">
				      <option value="Técnico" ${professor.titulacao eq "Técnico" ? "SELECTED" : ""}>Técnico</option>
				      <option value="Bacharel" ${professor.titulacao eq "Bacharel" ? "SELECTED" : ""}>Bacharel</option>
				      <option value="Licenciado" ${professor.titulacao eq "Licenciado" ? "SELECTED" : ""}>Licenciado</option>
				      <option value="Especialista" ${professor.titulacao eq "Especialista" ? "SELECTED" : ""}>Especialista</option>
				      <option value="Mestre" ${professor.titulacao eq "Mestre" ? "SELECTED" : ""}>Mestre</option>
				      <option value="Doutor" ${professor.titulacao eq "Doutor" ? "SELECTED" : ""}>Doutor</option>
   				</select>
   				
			</div>
			<div class="text-right">
				<button type="submit" class="btn btn-primary">Alterar</button>
			</div>
		</form>
		<div class="text-center"></br>
			<a class="text-decoration-none" href="listaProfessores">Listar Professores Cadastrados</a></br>
			<a class="text-decoration-none" href="/">Voltar para página incial</a>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="./static/bootstrap/js/bootstrap.min.js"></script>
	<footer class="footer mt-auto py-1"
		style="background-color: #000; color: #FFF">
		<p class="text-center small">&copy;2020 Desenvolvido por Rodrigo Franco - Todos os direitos reservados.</p>
	</footer>
</body>
</html>