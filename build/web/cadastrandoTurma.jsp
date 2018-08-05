<%@page import="Escola.Cadastro"%>
<%
    Cadastro novoCadastro = new Cadastro();
    novoCadastro.cadastrarTurma(request.getParameter("nome"),request.getParameter("ano"),request.getParameter("turno"));
%>
<script>
    alert("Turma cadastrada com sucesso!");
    voltarParaIndex();
    function voltarParaIndex(){
        window.location.href = "index.jsp";
    }
</script>