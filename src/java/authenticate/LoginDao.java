/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package authenticate;

import bean.LoginBean;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Database;

/**
 *
 * @author neman
 */
public class LoginDao {
//    Klasa za dobavljanje info 
    public String authenticateUser(LoginBean loginBean){
        
        String userName = loginBean.getUserName();
        String password = loginBean.getPassword();
        
        Connection conn = null;
        
        String userNameDB = "";
        String passwordDB = "";
        
        conn = Database.getConnection();
        try {
            ResultSet rs = conn.createStatement().executeQuery("select * from login");
            while(rs.next()){
                userNameDB = rs.getString("user_name");
                passwordDB = rs.getString("password");
                
                if (userName.equals(userNameDB) && password.equals(passwordDB)) {
                    return "user";
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(LoginDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    return "Invalid user credentials";
}
}
