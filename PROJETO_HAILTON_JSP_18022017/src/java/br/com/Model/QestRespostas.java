/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.Model;

/**
 *
 * @author miromar
 */
public class QestRespostas {
    private int respPk = 0;
    private int qetoPk = 0;
    private String respDescricao = "";

    public int getRespPk() {
        return respPk;
    }

    public void setRespPk(int respPk) {
        this.respPk = respPk;
    }

    public int getQetoPk() {
        return qetoPk;
    }

    public void setQetoPk(int qetoPk) {
        this.qetoPk = qetoPk;
    }

    public String getRespDescricao() {
        return respDescricao;
    }

    public void setRespDescricao(String respDescricao) {
        this.respDescricao = respDescricao;
    }
    
    
    
}
