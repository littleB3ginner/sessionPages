/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author neman
 */
public class Database {
//    Konekcija sa bazom podataka
public static Connection getConnection(){
        Connection conn = null;
        try {
            
            conn = DriverManager.getConnection("jdbc:mysql://localhost/web","root","root");
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }
}
