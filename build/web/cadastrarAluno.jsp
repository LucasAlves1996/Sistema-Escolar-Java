<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cadastrar aluno</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS\style.css">
    </head>
    <body>
        <header>
            <nav>
                <img src="IMGS/home.png" onclick="home()" id="bt-home" height="100" width="100">
            </nav>
        </header>

        <section>
            <div id='form'>
		<h1>Cadastro de aluno</h1>
		<form method='POST' action='cadastrandoAluno.jsp'>
                    <label>Nome completo:</label>
                    <input type="text" name="nome" placeholder="Digite o nome do aluno...">
                    <label>Data de nascimento:</label>
                    <input type="date" name="dataNascimento">
                    <label>CPF:</label>
                    <input type="text" name="cpf" placeholder="Digite cpf do aluno...">
                    <input type="submit" value="Cadastrar" id="button">
		</form>
            </div>
        </section>
        <footer></footer>
        <script>
            function home(){
                window.location.href = "index.jsp";
            }
        </script>
    </body>
</html>
