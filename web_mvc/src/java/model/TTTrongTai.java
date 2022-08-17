/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

/**
 *
 * @author Admin
 */
public class TTTrongTai {
    private int idthanhtoan;
    private int idtrandau;
    private int idtrongtai;
    private String ngaydienra;
    private String tentrandau;
    private String vitri;
    private int tiencong;
    private int thanhtoan;

    public TTTrongTai() {
    }

    public TTTrongTai(int idthanhtoan, int idtrandau, int idtrongtai, String ngaydienra, String tentrandau, String vitri, int tiencong, int thanhtoan) {
        this.idthanhtoan = idthanhtoan;
        this.idtrandau = idtrandau;
        this.idtrongtai = idtrongtai;
        this.ngaydienra = ngaydienra;
        this.tentrandau = tentrandau;
        this.vitri = vitri;
        this.tiencong = tiencong;
        this.thanhtoan = thanhtoan;
    }

    public int getThanhtoan() {
        return thanhtoan;
    }

    public void setThanhtoan(int thanhtoan) {
        this.thanhtoan = thanhtoan;
    }

    public int getIdthanhtoan() {
        return idthanhtoan;
    }

    public void setIdthanhtoan(int idthanhtoan) {
        this.idthanhtoan = idthanhtoan;
    }

    public int getIdtrandau() {
        return idtrandau;
    }

    public void setIdtrandau(int idtrandau) {
        this.idtrandau = idtrandau;
    }

    public int getIdtrongtai() {
        return idtrongtai;
    }

    public void setIdtrongtai(int idtrongtai) {
        this.idtrongtai = idtrongtai;
    }

    public String getNgaydienra() {
        return ngaydienra;
    }

    public void setNgaydienra(String ngaydienra) {
        this.ngaydienra = ngaydienra;
    }

    public String getTentrandau() {
        return tentrandau;
    }

    public void setTentrandau(String tentrandau) {
        this.tentrandau = tentrandau;
    }

    public String getVitri() {
        return vitri;
    }

    public void setVitri(String vitri) {
        this.vitri = vitri;
    }

    public int getTiencong() {
        return tiencong;
    }

    public void setTiencong(int tiencong) {
        this.tiencong = tiencong;
    }

    @Override
    public String toString() {
        return "TTTrongTai{" + "idthanhtoan=" + idthanhtoan + ", idtrandau=" + idtrandau + ", idtrongtai=" + idtrongtai + ", ngaydienra=" + ngaydienra + ", tentrandau=" + tentrandau + ", vitri=" + vitri + ", tiencong=" + tiencong + ", thanhtoan=" + thanhtoan + '}';
    }

}
