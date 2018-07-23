package Escola;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Cadastro {
    
    public Cadastro(){
        
    }
    
    public void cadastrarAluno(String nome, String dataNascimento, String cpf) throws SQLException{
        Aluno novoAluno = new Aluno();
        novoAluno.setNome(nome);
        novoAluno.setDataNascimento(dataNascimento);
        novoAluno.setCpf(cpf);
        Connection con = new ConnectionFactory().getConnection();
        String sql = "INSERT INTO alunos " +
                "(nome,dataNascimento,cpf) " +
                "VALUES (?,?,?)";
        try {
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, novoAluno.getNome());
            stmt.setString(2, novoAluno.getDataNascimento());
            stmt.setString(3, novoAluno.getCpf());
            stmt.execute();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close();
        }
    }
    
    public void cadastrarProfessor(String nome, String dataNascimento, String cpf){
        Professor novoProfessor = new Professor();
        novoProfessor.setNome(nome);
        novoProfessor.setDataNascimento(dataNascimento);
        novoProfessor.setCpf(cpf);
        
    }
    
    public void cadastrarTurma(String nome, String ano, String turno){
        Turma novaTurma = new Turma();
        novaTurma.setNome(nome);
        novaTurma.setAno(ano);
        novaTurma.setTurno(turno);
        
    }
    
}
