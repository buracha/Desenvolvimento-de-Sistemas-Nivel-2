<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Read and Delete</title>
<!-- Inclua o link para o Bootstrap via CDN -->
<link rel="icon" type="image/x-icon" href="./icon/favicon.ico">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<!--BootStrap Icons-->
    <link rel="stylesheet" href="node_modules/bootstrap-icons/font/bootstrap-icons.css">
    
    <!--Css do Projeto-->
    <link rel="stylesheet" href="styles.css" />
</head>
<body class="text-center">
    <!-- Cabeçalho -->
    <header>
        <nav class="navbar navbar-expand-lg sticky-top bg-primary-color" id="navbar">
        <div class="container">
            <a href="home.html" class="navbar-brand primary-color">
                <img src="img/logo.png" alt="Viagens">
                <span>Viagens</span>
            </a>

            <button 
              class="navbar-toggler" 
              type="button" 
              data-bs-toggle="collapse" 
              data-bs-target="#navbar-items"
              aria-controls="navbar-items"
              aria-expanded="false"
              aria-label="Toggle navigation"
            >
            
            <i class="bi bi-list"> </i>

            </button>

            <div class="collapse navbar-collapse" id="navbar-items">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a href="home.html" class="nav-link cor" aria-current="page">Home</a>
                    </li>

                    <li class="nav-item">
                        <a href="Destino.html" class="nav-link primary-color">Destino</a>
                    </li>

                    <li class="nav-item">
                        <a href="Promoção.html" class="nav-link primary-color">Promoção</a>
                    </li>

                    <li class="nav-item">
                        <a href="Contato.html" class="nav-link primary-color">Contato</a>
                    </li>
                    
                    <li class="nav-item">
                        <a href="cadastro.jsp" class="nav-link active primary-color">Cadastro</a>
                    </li>

                </ul>

            </div>

        </div>

    </nav>
    </header>
	<h1 class="mt-5">Lista de Clientes</h1>
	<div class="container mt-5">
	<a href="./cadastro.jsp" class="btn btn-primary mb-5">Criar novo</a>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>ID</th>
					<th>Nome</th>
					<th>Cpf</th>
					<th>Telefone</th>
					<th>Email></th>
					<th>Senha</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${clients}" var="client">
					<tr>
						<td>${client.id_cliente}</td>
						<td>${client.nome}</td>
						<td>${client.cpf}</td>
						<td>${client.telefone}</td>
						<td>${client.email}</td>
						<td>${client.senha}</td>
						<td>
							<a href="UpdateController?id_cliente=${client.id_cliente}" class="btn btn-success">Editar</a>
							<a href="DeleteController?id_cliente=${client.id_cliente}"
							class="btn btn-danger">Excluir</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	 <!-- Rodapé -->
    <footer class="bg-dark text-light text-center py-3 fixed-bottom">
        &copy; 2023 Viagens. Todos os direitos reservados.
    </footer>
	<!-- Inclua os scripts do Bootstrap via CDN -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>