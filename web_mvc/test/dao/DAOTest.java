/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import java.util.List;
import model.Account;
import model.TTTrongTai;
import model.TrongTai;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Admin
 */
public class DAOTest {
    
    public DAOTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of login method, of class DAO.
     */
    @Test
    public void testLogin() {
        System.out.println("login");
        String user = "";
        String pass = "";
        DAO instance = new DAO();
        Account expResult = null;
        Account result = instance.login(user, pass);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getAllTrongTai method, of class DAO.
     */
    @Test
    public void testGetAllTrongTai() {
        System.out.println("getAllTrongTai");
        DAO instance = new DAO();
        List<TrongTai> expResult = null;
        List<TrongTai> result = instance.getAllTrongTai();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of search method, of class DAO.
     */
    @Test
    public void testSearch() {
        System.out.println("search");
        String name = "";
        DAO instance = new DAO();
        List<TrongTai> expResult = null;
        List<TrongTai> result = instance.search(name);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getThanhToanById method, of class DAO.
     */
    @Test
    public void testGetThanhToanById() {
        System.out.println("getThanhToanById");
        String id = "";
        DAO instance = new DAO();
        List<TTTrongTai> expResult = null;
        List<TTTrongTai> result = instance.getThanhToanById(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getTrongTaiById method, of class DAO.
     */
    @Test
    public void testGetTrongTaiById() {
        System.out.println("getTrongTaiById");
        String id = "1";
        DAO instance = new DAO();
        TrongTai expResult = null;
        TrongTai result = instance.getTrongTaiById(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getTongTien method, of class DAO.
     */
    @Test
    public void testGetTongTien() {
        System.out.println("getTongTien");
        String id = "";
        DAO instance = new DAO();
        int expResult = 0;
        int result = instance.getTongTien(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getThanhToan method, of class DAO.
     */
    @Test
    public void testGetThanhToan() {
        System.out.println("getThanhToan");
        String id = "";
        DAO instance = new DAO();
        instance.getThanhToan(id);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of main method, of class DAO.
     */
    @Test
    public void testMain() {
        System.out.println("main");
        String[] args = null;
        DAO.main(args);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
