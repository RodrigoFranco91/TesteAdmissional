<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="height: 100%; min-height: 100%">
<head lang="pt-BR">
<meta charset="UTF-8">
<title>Cadastro de Aluno</title>
<link rel="stylesheet" href="./static/bootstrap/css/bootstrap.min.css">
</head>
<body class="bg-light" style="display: flex; flex-direction: column; min-height: 100%">
	<div class="container">
		<div class="py-5 text-center">
			<h1>Formulário de Aluno</h1>
			</br>
			<p class="lead">Digite o(s) dado(s) do aluno que se deseja cadastrar:</p>
		</div>
		<form action="cadastroAluno">
			<div class="form-group ">
				<label for="nome">Nome:</label> 
				<input type="text" class="form-control" id="nome" name="nome"> 
			</div>
			<div class="text-right">
				<button type="submit" class="btn btn-primary">Cadastrar</button>
			</div>
		</form>
		<div class="text-center"></br>
			<a class="text-decoration-none" href="listaAlunos">Listar Alunos Cadastrados</a></br>
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