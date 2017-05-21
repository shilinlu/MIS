/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import managers.DatabaseManager;
import managers.SearchManager;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author shilinlu
 */
@Controller
public class SearchController {
    private SearchManager searchManager;
    private DatabaseManager databaseManager;
  
    @RequestMapping(value="/searchMovies", method = RequestMethod.POST)
    public ModelAndView searchMovies(@RequestParam(value = "query") String query) throws SQLException{
        ModelAndView mv = new ModelAndView("searchMovies");
        try {
            searchManager=new SearchManager();
            mv.addObject("query",searchManager.searchMovies(query));  // binds the jsp ${query} so its printable
            mv.addObject("Movies",searchManager.searchMoviesFromDB(query));
        } catch (IOException ex) {
            Logger.getLogger(SearchController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return mv;
    }
    
    @RequestMapping(value="/searchActors", method = RequestMethod.POST)
    public ModelAndView searchActors(@RequestParam(value = "query") String query)throws SQLException {
        ModelAndView mv = new ModelAndView("searchActors");
        try {
            searchManager=new SearchManager();
            mv.addObject("query",searchManager.searchActors(query));  // binds the jsp ${query} so its printable
        } catch (IOException ex) {
            Logger.getLogger(SearchController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return mv;
    }
    
    @RequestMapping(value="/getMovie", method = RequestMethod.POST)
    public ModelAndView getMovie(@RequestParam(value = "query") int query){
        ModelAndView mv = new ModelAndView("getMovie");
        try {
            searchManager=new SearchManager();
            mv.addObject("query",searchManager.getMovieInfo(query));  // binds the jsp ${query} so its printable
            mv.addObject("cast", searchManager.getMovieCastInfo(query));
        } catch (IOException ex) {
            Logger.getLogger(SearchController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return mv;
    }

    @RequestMapping(value="/getActor", method = RequestMethod.POST)
    public ModelAndView getActor(@RequestParam(value = "query") int query){
        
        ModelAndView mv = new ModelAndView("getActor");
        try {
            searchManager=new SearchManager();
            mv.addObject("query",searchManager.getActorInfo(query));  // binds the jsp ${query} so its printable
            mv.addObject("knownFor",searchManager.getActorKnownFor(query));
        } catch (IOException ex) {
            Logger.getLogger(SearchController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return mv;
    }
    
    @RequestMapping(value="/newReleases")
    public ModelAndView getNewReleases(){
        ModelAndView mv = new ModelAndView("newReleases");
        mv.setViewName("newReleases");
        try {
            searchManager=new SearchManager();
            mv.addObject("query", searchManager.getNewReleases());
        } catch (IOException ex) {
            Logger.getLogger(SearchController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return mv;
    }
    @RequestMapping(value="/FindTheater")
    public ModelAndView getTheaters() throws SQLException{
        ModelAndView mv = new ModelAndView("FindTheater");
        databaseManager=new DatabaseManager();
        mv.addObject("Theaters", databaseManager.searchTheaterFromDB());
        return mv;
    }
    
    @RequestMapping(value="/GetDirection")
    public ModelAndView getDirections() {
        ModelAndView mv = new ModelAndView("GetDirection");
       
        return mv;
    }
    
    @RequestMapping(value="/MovieGenre", method = RequestMethod.POST)
    public ModelAndView getMovieByGenre(@RequestParam(value = "genreID") int genreID)throws SQLException {
        ModelAndView mv = new ModelAndView("MovieGenre");
        try {
            searchManager=new SearchManager();
            mv.addObject("Movies",searchManager.searchMovieByGenre(genreID));  // binds the jsp ${query} so its printable
        } catch (IOException ex) {
            Logger.getLogger(SearchController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return mv;
    }
   
    public SearchManager getSearchManager() {
        return searchManager;
    }

    public void setSearchManager(SearchManager searchManager) {
        this.searchManager = searchManager;
    }
}
