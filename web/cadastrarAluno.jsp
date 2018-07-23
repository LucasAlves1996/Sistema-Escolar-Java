<%@page import="Escola.Cadastro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cadastrar aluno</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS\style.css">
    </head>
    <body>
        <header></header>
        <nav></nav>
        <section>
            <div id='form'>
		<h1>Cadastro de aluno</h1>
		<form method='POST' action='cadastrandoAluno.jsp'>
                    <label>Nome completo:</label>
                    <input type="text" name="nome" placeholder="Digite seu nome completo..."/><br/>
                    <label>Data de nascimento:</label>
                    <input type="date" name="dataNascimento"/><br/>
                    <label>CPF:</label>
                    <input type="text" name="cpf" placeholder="Digite o seu cpf..."/><br/>
                    <input type="submit" value="Cadastrar" id="button"/>
		</form>
            </div>
        </section>
        <footer></footer>
    </body>
</html>
