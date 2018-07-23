package Escola;

public class Aluno extends Pessoa{
    
    private String turma;
    private double nota;
    
    public Aluno(){
        
    }

    public String getTurma() {
        return turma;
    }

    public void setTurma(String turma) {
        this.turma = turma;
    }

    public double getNota() {
        return nota;
    }

    public void setNota(double nota) {
        this.nota = nota;
    }
    
}
