<%@page import="Escola.Cadastro"%>
<%
    Cadastro novoCadastro = new Cadastro();
    novoCadastro.cadastrarProfessor(request.getParameter("nome"), request.getParameter("dataNascimento"), request.getParameter("cpf"));
%>
<script>
    alert("Professor cadastrado com sucesso!");
    voltarParaIndex();
    function voltarParaIndex(){
        window.location.href = "index.jsp";
    }
</script>