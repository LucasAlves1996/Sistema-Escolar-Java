/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Escola;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Lucas
 */
public class Exclusao {
    
    public Exclusao(){
        
    }
    
    public void excluirAluno(int cod) throws SQLException{
        Connection con = new ConnectionFactory().getConnection();
        Aluno excluiAluno = new Aluno();
        excluiAluno.setCod(cod);
        try {
            PreparedStatement stmt = con.prepareStatement("delete " +
                "from alunos where cod=?");
            stmt.setInt(1, excluiAluno.getCod());
            stmt.execute();
            stmt.close();
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close();
        }
    }
    
    public void excluirProfessor(int cod) throws SQLException{
        Connection con = new ConnectionFactory().getConnection();
        Professor excluiProfessor = new Professor();
        excluiProfessor.setCod(cod);
        try {
            PreparedStatement stmt = con.prepareStatement("delete " +
                "from professores where cod=?");
            stmt.setInt(1, excluiProfessor.getCod());
            stmt.execute();
            stmt.close();
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close();
        }
    }
    
}