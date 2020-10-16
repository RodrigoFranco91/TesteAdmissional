<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="height: 100%; min-height: 100%">
<head lang="pt-BR">
<meta charset="UTF-8">
<title>Sobre</title>
<link rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css">
</head>
<body class="bg-light" style="display: flex; flex-direction: column; min-height: 100%">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<a class="navbar-brand mr-auto mr-lg-0" href="/">Sobre - Projeto Admissional</a>
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
						<a class="nav-link " href="sobre" id="dropdown01" 
						aria-haspopup="true" aria-expanded="false">Sobre</a>
					</li>
				</ul>
			</div>
		</nav>
	<main>
		<section class="jumbotron ">
    		<div class="container">
     			<h1 class="text-center">Saiba mais sobre o Projeto Admissional</h1></br>
      			<p class="lead text-muted">Esse projeto <a href="https://www.rodrigofrancodelima.com.br">eu</a> 
      			criei a pedido de uma empresa localizada na cidade de Itajuba - MG, pois uma das etapas do processo seletivo era criar um app seguindo 
      			os requesitos funcionais e não funcionais passados por eles. </p> 
      			<p class="lead text-muted">Fui aprovado nesse processo seletivo, mas infelizmente por problemas pessoais tive que desistir da vaga.</p>
    		</div>
  		</section>
  		<section class="jumbotron ">
    		<div class="container">
     			<h1 class="text-center">Tecnologias Utilizadas:</h1></br>
      			<ul class="list-group list-group-flush">
				  <li class="list-group-item"><span class="font-weight-bold">Linguagem de Programação:</span> Java.</li>
				  <li class="list-group-item"><span class="font-weight-bold">Especificações do Java EE:</span> JPA, JSP.</li>
				  <li class="list-group-item"><span class="font-weight-bold">Linguagens de Marcação e Estilo:</span> HTML5, CSS3.</li>
				  <li class="list-group-item"><span class="font-weight-bold">Frameworks:</span> Spring (Boot, MVC, Data JPA), Bootstrap.</li>
				  <li class="list-group-item"><span class="font-weight-bold">Banco de Dados(SGBD):</span> PostgreSQL.</li>
				  <li class="list-group-item"><span class="font-weight-bold">Controlador de Versão:</span> Git/Github.</li>
				  <li class="list-group-item"><span class="font-weight-bold">Servidor de Aplicação:</span> TomCat.</li>
				  <li class="list-group-item"><span class="font-weight-bold">Hospedagem:</span> Heroku.</li>
				</ul>
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