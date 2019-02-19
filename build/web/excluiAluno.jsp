<%@page import="Escola.Exclusao"%>
<%
    Exclusao exclusao = new Exclusao();
    exclusao.excluirAluno(Integer.parseInt(request.getParameter("cod")));
%>
<script>
    alert("Aluno excluído com sucesso!");
    window.location.href = "administrarAlunos.jsp";
</script>