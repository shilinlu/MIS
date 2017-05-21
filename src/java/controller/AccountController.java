/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import domains.User;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.Properties;
import javax.servlet.http.HttpSession;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import managers.AccountManager;
import managers.DatabaseManager;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author shilinlu
 */
@Controller
public class AccountController {
    private AccountManager accountManager=new AccountManager();
    private DatabaseManager databaseManager=new DatabaseManager();
     
    @RequestMapping("/Register")
    public ModelAndView displayRegisterPage() {
        ModelAndView mv = new ModelAndView("Register");
        mv.setViewName("Register");
        return mv;
    }
    
    @RequestMapping("/login")
    public ModelAndView displayLoginPage() {
        ModelAndView mv = new ModelAndView("login");
        return mv;
    }
    
    @RequestMapping("/Support")
    public ModelAndView displaySupportPage() {
        ModelAndView mv = new ModelAndView("Support");
        return mv;
    }
    
    @RequestMapping(value="/BuyGiftCard")
    public ModelAndView buyGiftCard(HttpSession sessions) {
        ModelAndView mv = new ModelAndView("BuyGiftCard");
        final String username = "shilinlu1234@gmail.com";
        final String password = "Welch123";

        Properties props = new Properties();
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props,
          new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
          });
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO,
                InternetAddress.parse(sessions.getAttribute("userEmail").toString()));
            message.setSubject("Gift Card Purchase Confirmation");
            double random =Math.random()*1000000;
            message.setText("Thank you for purchasing our Gift Card! ,"
                + "\n\n Your Gift Card Code is : "+random);

            Transport.send(message);

            System.out.println("Done");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
        mv.addObject("giftcard",true);
        return mv;
    }
    
    @RequestMapping(value="/loggedInIndex", method = RequestMethod.POST)
    public ModelAndView login(@RequestParam(value = "userName") String userName,
                              @RequestParam(value = "password") String password,
                              HttpSession session) throws SQLException{
        
        ModelAndView mv = new ModelAndView("index");
        if(databaseManager.login(userName, password) != null){
            User user = databaseManager.login(userName, password);
            String userEmail=user.getEmail();
            session.setAttribute("currentUser", userName);
            session.setAttribute("userEmail",userEmail);
            mv.addObject("login",true);
        }
        else mv.addObject("login",false);
        return mv;
    }
    
    @RequestMapping(value="/SignUpNewsLetter", method = RequestMethod.POST)
    public ModelAndView newsletterSignUp(@RequestParam(value = "userEmail") String userEmail){
        System.out.println("HERENIGA"+userEmail);
        final String username = "shilinlu1234@gmail.com";
        final String password = "Welch123";

        Properties props = new Properties();
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props,
          new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
          });
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO,
                InternetAddress.parse(userEmail));
            message.setSubject("Fandango Newsletter Signup Confirmation");
            message.setText("Thank you for signing up to Fandango Newsletter! ,"
                + "\n\n You will receive monthly emails about new and upcoming movies!");

            Transport.send(message);

            System.out.println("Done");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
   
        ModelAndView mv = new ModelAndView("index");
        return mv;
    }
    
    @RequestMapping(value="/logout", method = RequestMethod.GET)
    public ModelAndView logout(HttpSession session){
        
        session.setAttribute("currentUser",null);
        session.setAttribute("userEmail",null);
        
        return new ModelAndView("index");
    }

    @RequestMapping(value="/registerStatus", method = RequestMethod.POST)
    public ModelAndView registerAccount(@RequestParam(value = "username") String userName,
                                     @RequestParam(value = "email") String email,
                                     @RequestParam(value = "password") String password,
                                     @RequestParam(value = "phone") String phoneNumber) throws SQLException{
        ModelAndView mv = new ModelAndView("registerStatus");
        
        User newUser = accountManager.createAccount( userName, password, email, phoneNumber);
        if(newUser!=null){
            mv.addObject("account",newUser);  // binds the jsp ${query} so its printable
            mv.addObject("register", true);
        }    
        else mv.addObject("register", false);
        
        try {
             databaseManager.addUser(userName, email,  password, phoneNumber);   
        } catch (SQLIntegrityConstraintViolationException e) {
            // Duplicate entry
            }
        
        return mv;
        
        
    }
    
    


    public AccountManager getAccountManager() {
        return accountManager;
    }
    public void setAccountManager(AccountManager accountManager) {
        this.accountManager = accountManager;
    }

    public DatabaseManager getDatabaseManager() {
        return databaseManager;
    }

    public void setDatabaseManager(DatabaseManager databaseManager) {
        this.databaseManager = databaseManager;
    }



}
