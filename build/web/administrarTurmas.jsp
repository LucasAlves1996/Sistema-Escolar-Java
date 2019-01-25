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
                <td id="nome">Nome da turma</td>
                <td id="ano">Ano</td>
                <td id="turno">Turno</td>
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
                <td id="nomeTurma"><a href="administrarTurma.jsp"><%out.print(res.getString("nome"));%></a></td>
                <td id="ano"><a href="administrarTurma.jsp"><%out.print(res.getString("ano"));%></a></td>
                <td id="turno"><a href="administrarTurma.jsp"><%out.print(res.getString("turno"));%></a></td>
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
