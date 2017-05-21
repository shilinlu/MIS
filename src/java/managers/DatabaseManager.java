/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package managers;

import domains.Movie;
import domains.Theater;
import domains.User;
import java.sql.*;
import java.util.ArrayList;
/**
 *
 * @author shilinlu
 */
public class DatabaseManager  {
    
    Connection connection = null; 
    
    public DatabaseManager(){
        try {
            String connectionURL = "jdbc:mysql://mysql2.cs.stonybrook.edu/dogwood";
            //Connection connection = null; 
            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            connection = DriverManager.getConnection(connectionURL, "dogwood", "changeit");
            if(!connection.isClosed())
                 System.out.println("Successfully connected to " + "MySQL server using TCP/IP...");
                // connection.close();
        }
        catch(Exception ex){
            System.out.println("Unable to connect to database"+ex);
        }   
    }
    public void addUser(String userName,String email,String pass,String phoneNumber) throws SQLException{
            Statement st=connection.createStatement();
          
            st.executeUpdate("INSERT INTO Users (userName, email,pass,phoneNumber)"
            +"VALUES ("+"'"+userName+"'"+","+"'"+ email +"'"+","+"'"+ pass+"'"+","+"'"+ phoneNumber+"'"+")");
        
            ResultSet rs = null;
            
            rs = st.executeQuery("select * from Users" );
            //String userName = "";
             while(rs.next()) {
                 userName = rs.getString("userName");
                 System.out.println(userName);
             }
            
            System.out.println("<h2>Account Created!</h2>");
       
    }

    public void addMovies(int movieID,String movieName,String movieOverview,String moviePoster,String releaseDate,double popularity) throws SQLException{
        Statement st=connection.createStatement();
          
        st.executeUpdate("INSERT INTO Movies (movieID, movieName, movieOverview,moviePoster,releaseDate,popularity)"
            +"VALUES ("+movieID+","+"'"+ movieName +"'"+","+"'"+ movieOverview+"'"+","+"'"+moviePoster+"'"+","+"'"+releaseDate+"'"+","+popularity+")");
        
       
    }

    public ArrayList <Movie>  searchMovieFromDB(String query) throws SQLException{
          Statement st=connection.createStatement();
           ResultSet rs = null;
           String movieName = "";
           String overView = "";
           int movieID;
           String moviePoster = "";
           String releaseDate="";
           rs = st.executeQuery("SELECT *" + " FROM Movies" +" WHERE movieName LIKE"+ '"'+"%"+query+"%"+'"'); 
           ArrayList <Movie> movieList = new ArrayList();
           while(rs.next()) {
                 movieName = rs.getString("movieName");
                 overView = rs.getString("movieOverview");
                 movieID = rs.getInt("movieID");
                 moviePoster = rs.getString("moviePoster");
                 releaseDate = rs.getString("releaseDate");
                 Movie movie = new Movie();
                 movie.setMovieID(movieID);
                 movie.setMovieName(movieName);
                 movie.setMovieOverview(overView);
                 movie.setReleaseDate(releaseDate);
                 movie.setMoviePoster(moviePoster);
                 movieList.add(movie);
             }
           return movieList;
    }
    
    public ArrayList <Theater>  searchTheaterFromDB() throws SQLException{
          Statement st=connection.createStatement();
           ResultSet rs = null;
           String theaterName = "";
           String street = ""; String state = ""; String city = ""; String country = ""; String postalCode = "";
           String phoneNumber = ""; String website = "";
           rs = st.executeQuery("SELECT *" + " FROM Theaters"); 
           ArrayList <Theater> theaterList = new ArrayList();
           while(rs.next()) {
                 theaterName = rs.getString("theaterName");
                 street = rs.getString("street");
                 state = rs.getString("state");
                 city = rs.getString("city");
                 country = rs.getString("country");
                 postalCode = rs.getString("postalCode");
                 phoneNumber = rs.getString("phoneNumber");
                 website = rs.getString("website");
                Theater theater = new Theater();
                theater.setTheaterName(theaterName);
                theater.setCity(city);
                theater.setCountry(country);
                theater.setStreet(street);
                theater.setPostalCode(postalCode);
                theater.setState(state);
                theater.setWebsite(website);
                theater.setPhoneNumber(phoneNumber);
                theaterList.add(theater);
             }
           return theaterList;
    }
    public User login(String userName, String password) throws SQLException{
        Statement st=connection.createStatement();
        ResultSet rs = null;
        String loginSQL = "SELECT * FROM Users WHERE userName='" + userName + "' && pass='" + password+ "'";
        rs = st.executeQuery(loginSQL);
        User user =new User();
        while(rs.next()) {
             String name = rs.getString("userName");
             String pass = rs.getString("pass");
             String email = rs.getString("email");
             String phoneNumber = rs.getString("phoneNumber");
             user.setEmail(email);
             user.setPassword(password);
             user.setUserName(name);
             user.setPhoneNumber(phoneNumber);
             return user;
         }
        return null;
    }

}