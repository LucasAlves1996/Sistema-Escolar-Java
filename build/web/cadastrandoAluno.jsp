<%@page import="Escola.Cadastro"%>
<%  
    Cadastro novoCadastro = new Cadastro();
    novoCadastro.cadastrarAluno(request.getParameter("nome"), request.getParameter("dataNascimento"), request.getParameter("cpf"));
%>
<script>
    voltarParaIndex();
    function voltarParaIndex(){
        setTimeout(function(){ window.location.href = "index.jsp"; },5000);
    }
</script>