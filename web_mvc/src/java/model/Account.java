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
public class Account {
    private int uid;
    private String username;
    private String password;
    private int vitri;

    public Account() {
    }

    public Account(int uid, String username, String password, int vitri) {
        this.uid = uid;
        this.username = username;
        this.password = password;
        this.vitri = vitri;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getVitri() {
        return vitri;
    }

    public void setVitri(int vitri) {
        this.vitri = vitri;
    }

    @Override
    public String toString() {
        return "Account{" + "uid=" + uid + ", username=" + username + ", password=" + password + ", vitri=" + vitri + '}';
    }
    
    
}
