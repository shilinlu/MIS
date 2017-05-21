/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package managers;

import domains.User;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

/**
 *
 * @author shilinlu
 */
public class AccountManager {
    private HashMap<String, User> users;

    public AccountManager(){
       users = new HashMap();
    }

    public User createAccount( String userName, String password, String email, String phoneNumber)  throws SQLException {
        if(!users.containsKey(userName)){
            User user = new User();
            user.setEmail(email);
            
            user.setPassword(password);
            user.setPhoneNumber(phoneNumber);
            user.setUserName(userName);
            users.put(user.getUserName(), user);
            return user;
        }
        else return null;
    
    }
    
    
    public HashMap<String, User> getUsers() {
        return users;
    }

    public void setUsers(HashMap<String, User> users) {
        this.users = users;
    }
}
