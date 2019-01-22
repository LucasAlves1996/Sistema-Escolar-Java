<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cadastrar turma</title>
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
            <div id="form">
                <h1>Cadastro de turma</h1>
                <form method="POST" action="cadastrandoTurma.jsp">
                    <label>Nome da turma:</label>
                    <input type="text" name="nome" placeholder="Digite o nome da turma...">
                    <label>Ano:</label>
                    <input type="text" name="ano" placeholder="Digite o ano da turma...">
                    <label>Turno:</label>
                    <input type="text" name="turno" placeholder="Digite o turno da turma...">
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