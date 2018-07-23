<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>Escola</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS\style.css">
    </head>
    <body>
        <header></header>
	<nav></nav>
	<section>
            <div id="menu">
                <h1>Sistema escolar</h1>
                <div id="botoes">
                    <button onclick="cadastrarAluno()">Cadastrar aluno</button>
                    <button onclick="cadastrarProfessor()">Cadastrar professor</button>
                    <button onclick="cadastrarTurma()">Cadastrar turma</button>
                    <button onclick="administrarTurmas()">Administrar turmas</button>
                </div>
            </div>
	</section>
	<footer></footer>
        <script>
            function cadastrarAluno(){
                window.location.href = "cadastrarAluno.jsp";
            }
            function cadastrarProfessor(){
                window.location.href = "cadastrarProfessor.jsp";
            }
            function cadastrarTurma(){
                window.location.href = "cadastrarTurma.jsp";
            }
            function administrarTurmas(){
                window.location.href = "administrarTurmas.jsp";
            }
        </script>
    </body>
</html>
