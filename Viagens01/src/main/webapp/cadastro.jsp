<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/x-icon" href="./icon/favicon.ico">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!--Css do BootStrap-->
    
    <!--BootStrap Icons-->
    <link rel="stylesheet" href="node_modules/bootstrap-icons/font/bootstrap-icons.css">
    
    <!--Css do Projeto-->
    <link rel="stylesheet" href="styles.css" />

    <!--Script do BootStrap-->
    
<title>Create</title>
</head>
<body>
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
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<h1 class="mt-5" >Cadastro de Cliente</h1>
				<form class="mt-5" action="CreateController" method="post">
					<div class="form-group">
						<label for="nome">Nome:</label> <input type="text"
							class="form-control" id="nome" name="nome" required>
					</div>
					<div class="form-group">
						<label for="cpf">Cpf:</label> <input type="number"
							class="form-control" id="cpf" name="cpf" required>
					</div>
					<div class="form-group">
						<label for="telefone">Telefone:</label> <input type="number"
							class="form-control" id="telefone" name="telefone" required>
					</div>
					<div class="form-group">
						<label for="email">Email:</label> <input type="text"
							class="form-control" id="email" name="email" required>
					</div>
					<div class="form-group">
						<label for="senha">Senha:</label> <input type="password"
							class="form-control" id="senha" name="senha" required>
					</div>
					
					<button type="submit" class="btn btn-primary">Cadastrar</button>
				</form>
			</div>
		</div>
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