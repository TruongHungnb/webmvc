/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

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
public class AccountTest {
    
    public AccountTest() {
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
     * Test of getUid method, of class Account.
     */
    @org.junit.Test
    public void testGetUid() {
        System.out.println("getUid");
        Account instance = new Account();
        int expResult = 0;
        int result = instance.getUid();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setUid method, of class Account.
     */
    @org.junit.Test
    public void testSetUid() {
        System.out.println("setUid");
        int uid = 0;
        Account instance = new Account();
        instance.setUid(uid);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getUsername method, of class Account.
     */
    @org.junit.Test
    public void testGetUsername() {
        System.out.println("getUsername");
        Account instance = new Account();
        String expResult = "";
        String result = instance.getUsername();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setUsername method, of class Account.
     */
    @org.junit.Test
    public void testSetUsername() {
        System.out.println("setUsername");
        String username = "";
        Account instance = new Account();
        instance.setUsername(username);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getPassword method, of class Account.
     */
    @org.junit.Test
    public void testGetPassword() {
        System.out.println("getPassword");
        Account instance = new Account();
        String expResult = "";
        String result = instance.getPassword();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setPassword method, of class Account.
     */
    @org.junit.Test
    public void testSetPassword() {
        System.out.println("setPassword");
        String password = "";
        Account instance = new Account();
        instance.setPassword(password);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getVitri method, of class Account.
     */
    @org.junit.Test
    public void testGetVitri() {
        System.out.println("getVitri");
        Account instance = new Account();
        int expResult = 0;
        int result = instance.getVitri();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setVitri method, of class Account.
     */
    @org.junit.Test
    public void testSetVitri() {
        System.out.println("setVitri");
        int vitri = 0;
        Account instance = new Account();
        instance.setVitri(vitri);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of toString method, of class Account.
     */
    @org.junit.Test
    public void testToString() {
        System.out.println("toString");
        Account instance = new Account();
        String expResult = "";
        String result = instance.toString();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
