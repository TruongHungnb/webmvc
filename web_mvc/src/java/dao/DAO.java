package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.TTTrongTai;
import model.TrongTai;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Admin
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Account login(String user, String pass) {
        String query = "select * from Account \n"
                + "where username = ? and password = ? and vitri = 1";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public List<TrongTai> getAllTrongTai() {
        List<TrongTai> list = new ArrayList();
        String query = "select * from TrongTai";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new TrongTai(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<TrongTai> search(String name) {
        List<TrongTai> list = new ArrayList();
        String query = "select * from TrongTai\n"
                + "where hoten like ?";
        try {
            name = name.trim();
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + name + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new TrongTai(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<TTTrongTai> getThanhToanById(String id) {
        List<TTTrongTai> list = new ArrayList();
        String query = "select * from ThanhToan\n"
                + "where Idtrongtai = ? and thanhtoan = 1";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new TTTrongTai(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public TrongTai getTrongTaiById(String id) {
        String query = "select * from TrongTai\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new TrongTai(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public int getTongTien(String id) {
//        String query = "select sum(tiencong) tong from ThanhToan\n"
//                + "where Idtrongtai = ?";
        String query = "select * from ThanhToan\n"
                + "where Idtrongtai = ? and thanhtoan = 1";
        int sum = 0;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                sum += rs.getInt(7);
            }
//            return rs.getInt(1);
        } catch (Exception e) {
        }
        return sum;
    }

    public void getThanhToan(String id) {
        String query = "update ThanhToan\n"
                + "set thanhtoan = 0\n"
                + "where Idtrongtai = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeQuery();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
//        Account a = dao.login("hungtv", "123456");
//
//        System.out.println(a);
//        List<TrongTai> list = dao.search("Hùng");
//        for (TrongTai tmp : list) {
//            System.out.println(tmp);
//        }
//        List<TTTrongTai> list = dao.getThanhToanById(1);
//        for (TTTrongTai tmp : list) {
//            System.out.println(tmp);
//        }
//        int a = ;
        System.out.println(dao.getTongTien("1"));
    }
}
