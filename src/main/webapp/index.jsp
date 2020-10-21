<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="height: 100%; min-height: 100%">
<head lang="pt-BR">
<meta charset="UTF-8">
<title>Projeto Admissional B2ML</title>
<link rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css">
</head>
<body class="bg-light" style="display: flex; flex-direction: column; min-height: 100%">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<a class="navbar-brand mr-auto mr-lg-0" href="/">Projeto Admissional</a>
			<div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
				<ul class="navbar-nav mr-auto" style="margin-left: 3em">
					<li class="nav-item dropdown" style="margin-left: 1em">
						<a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" 
						aria-haspopup="true" aria-expanded="false">Realizar Cadastros</a>
						<div class="dropdown-menu" aria-labelledby="dropdown01">
							<a class="dropdown-item" href="professor">Cadastro de Professor</a> 
							<a class="dropdown-item" href="aluno">Cadastro de Aluno</a> 
							<a class="dropdown-item" href="turma">Cadastro de Turma</a> 
						</div>
					</li>
					<li class="nav-item dropdown" style="margin-left: 1em">
						<a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" 
						aria-haspopup="true" aria-expanded="false">Exibir Cadastros</a>
						<div class="dropdown-menu" aria-labelledby="dropdown01">
							<a class="dropdown-item" href="listaProfessores">Lista de Professores</a> 
							<a class="dropdown-item" href="listaAlunos">Lista de Alunos</a> 
							<a class="dropdown-item" href="listaTurma">Lista de Turma</a> 
						</div>
					</li>
					<li class="nav-item dropdown" style="margin-left: 1em">
						<a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" 
						aria-haspopup="true" aria-expanded="false">Alterar/Excluir Cadastros</a>
						<div class="dropdown-menu" aria-labelledby="dropdown01">
							<a class="dropdown-item" href="listaProfessores">Alterar/Excluir Professores</a> 
							<a class="dropdown-item" href="listaAlunos">Alterar/Excluir Alunos</a> 
							<a class="dropdown-item" href="listaTurma">Alterar/Excluir Turma</a> 
						</div>
					</li>
					<li class="nav-item dropdown" style="margin-left: 1em">
						<a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" 
						aria-haspopup="true" aria-expanded="false">Adicionar/Remover Alunos em Turmas</a>
						<div class="dropdown-menu" aria-labelledby="dropdown01">
							<a class="dropdown-item" href="listagemTurma">Adicionar Alunos</a> 
							<a class="dropdown-item" href="listagemTurma">Remover Alunos</a> 
						</div>
					</li>
					<li class="nav-item dropdown" style="margin-left: 1em">
						<a class="nav-link " href="sobre" id="dropdown01" 
						aria-haspopup="true" aria-expanded="false">Sobre</a>
					</li>
				</ul>
			</div>
		</nav>
	<main>
		<section class="jumbotron ">
    		<div class="container">
     			<h1 class="text-center">Projeto Admissional</h1></br>
      			<p class="lead text-muted">Essa é uma aplicação para Criar e Administrar Turmas de Aula.</p>
      			<p class="lead text-muted">Com ela é possível: Cadastrar Professores, Cadastrar Alunos, Cadastrar/Criar Turmas de Aula e Alterar/Excluir todos esses cadastros. Para acessar esses serviços basta acessar os links que estão na barra de navegação superior.</p>
    			<p class="lead text-muted">Clique em <a  href="sobre">sobre</a> para saber mais sobre o app e as tecnologias utilizadas.</p>
    		</div>
  		</section>
	</main>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="./static/bootstrap/js/bootstrap.min.js"></script>
	<footer class="footer mt-auto py-1" style="background-color: #000; color: #FFF">
		<p class="text-center small">&copy;2020 Desenvolvido por Rodrigo Franco - Todos os direitos reservados.</p>
	</footer>
</body>
</html>