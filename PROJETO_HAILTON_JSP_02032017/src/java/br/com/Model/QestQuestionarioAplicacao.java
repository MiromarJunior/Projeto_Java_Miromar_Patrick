 
package br.com.Model;

/**
 *
 * @author miromar
 */
public class QestQuestionarioAplicacao {
   private int qeapPk = 0 ;
   private int qestPk = 0 ;
   private int colaPk = 0;
   private int cursPk = 0;
   private String qeapPeriodo = "";

    public int getQeapPk() {
        return qeapPk;
    }

    public void setQeapPk(int qeapPk) {
        this.qeapPk = qeapPk;
    }

    public int getQestPk() {
        return qestPk;
    }

    public void setQestPk(int qestPk) {
        this.qestPk = qestPk;
    }

    public int getColaPk() {
        return colaPk;
    }

    public void setColaPk(int colaPk) {
        this.colaPk = colaPk;
    }

    public int getCursPk() {
        return cursPk;
    }

    public void setCursPk(int cursPk) {
        this.cursPk = cursPk;
    }

    public String getQeapPeriodo() {
        return qeapPeriodo;
    }

    public void setQeapPeriodo(String qeapPeriodo) {
        this.qeapPeriodo = qeapPeriodo;
    }
    
}
