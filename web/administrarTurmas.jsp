<%@page import="java.sql.ResultSet"%>
<%@page import="Escola.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administração de turmas</title>
        <link rel="stylesheet" type="text/css" href="CSS\style.css">
    </head>
    <body>
        <header>
            <nav>
                <img src="IMGS/home.png" onclick="home()" id="bt-home" height="100" width="100">
            </nav>
        </header>
        
        <table class="listaTurmas">
            <tr>
                <th colspan="3">Lista de turmas</th>
            </tr>
            <tr id="headerList">
                <td id="nomeTurma">Nome da turma</td>
                <td id="ano">Ano</td>
                <td id="turno">Turno</td>
                <td id="alteracoes"></td>
            </tr>
        </table>
        <%
           try{
               Connection con = new ConnectionFactory().getConnection();
               String sql = "SELECT * FROM turmas";
               ResultSet res = con.createStatement().executeQuery(sql);
               while(res.next()){         
        %>
        <table class="listaTurmas">
            <tr>
                <td id="nomeTurma"><%out.print(res.getString("nome"));%></td>
                <td id="ano"><%out.print(res.getString("ano"));%></td>
                <td id="turno"><%out.print(res.getString("turno"));%></td>
                <td id="alteracoes">
                    <button id="visualizar">Visualizar</button>
                    <button id="editar">Editar</button>
                    <button onclick="excluirAluno(<%out.print(res.getInt("cod"));%>)" id="excluir">Excluir</button>
                </td>
            </tr>
        </table>
        <%
               }
           }catch(Exception e){
               
           }
        %>
        <script>
            function home(){
                window.location.href = "index.jsp";
            }
        </script>
    </body>
</html>
