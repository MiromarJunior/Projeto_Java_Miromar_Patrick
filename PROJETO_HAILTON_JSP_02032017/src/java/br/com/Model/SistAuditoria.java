 
package br.com.Model;

/**
 *
 * @author miromar
 */
public class SistAuditoria {
    private int audiPk = 0;
    private String audiDescricao = "";
    private int audiTabelaPk = 0;

    public int getAudiPk() {
        return audiPk;
    }

    public void setAudiPk(int audiPk) {
        this.audiPk = audiPk;
    }

    public String getAudiDescricao() {
        return audiDescricao;
    }

    public void setAudiDescricao(String audiDescricao) {
        this.audiDescricao = audiDescricao;
    }

    public int getAudiTabelaPk() {
        return audiTabelaPk;
    }

    public void setAudiTabelaPk(int audiTabelaPk) {
        this.audiTabelaPk = audiTabelaPk;
    }
    
    
}
