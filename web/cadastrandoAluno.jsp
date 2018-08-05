<%@page import="Escola.Cadastro"%>
<%  
    Cadastro novoCadastro = new Cadastro();
    novoCadastro.cadastrarAluno(request.getParameter("nome"), request.getParameter("dataNascimento"), request.getParameter("cpf"));
%>
<script>
    alert("Aluno cadastrado com sucesso!");
    voltarParaIndex();
    function voltarParaIndex(){
        window.location.href = "index.jsp";
    }
</script>