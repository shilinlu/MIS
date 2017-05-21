/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package managers;

import domains.Actor;
import domains.Cast;
import domains.Movie;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.ArrayList;
import org.apache.commons.io.IOUtils;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author shilinlu
 */
public class SearchManager {
    ArrayList <Movie> movies;
    ArrayList <Actor> actors; 
    ArrayList <Cast> casts;
    private static final String url = "http://api.themoviedb.org/3/";
    private static final String API_KEY = "098dc1d846c235f5b910ed5dcec354ae";
    private static final String pic_url = "https://image.tmdb.org/t/p/w500";
    DatabaseManager databaseManager=new DatabaseManager();
    
    public SearchManager(){
        movies = new ArrayList();
        actors= new ArrayList();
        casts = new ArrayList();
    }

    public ArrayList <Movie> searchMovies(String query) throws MalformedURLException, IOException, SQLException{
        if(query.contains(" ")){
           query=query.replaceAll(" ", "+");      // correctly parses space in search box
        }
        String searchMoviesURL = url + "search/movie?api_key=" + API_KEY + "&language=en-US&query=" + query;
        
        JSONObject js = new JSONObject(IOUtils.toString(new URL(searchMoviesURL), Charset.forName("UTF-8")));
        JSONArray results = js.getJSONArray("results");
        for(int i=0;i<results.length();i++){
            JSONObject jsonMovie = results.getJSONObject(i);
            Movie movie = new Movie();
            movie.setMovieName(jsonMovie.getString("original_title"));
            movie.setMovieOverview(jsonMovie.getString("overview"));
            String posterURL = "";
            String image = "";
            if (!jsonMovie.isNull("poster_path") ) {
                posterURL = jsonMovie.getString("poster_path");
                image = pic_url+posterURL;
            }
            String dbOverview = movie.getMovieOverview();
            String dbMovieName = movie.getMovieName();
            if(dbOverview.contains("'")){
                dbOverview=dbOverview.replaceAll("'", "");      // correctly parses space in search box
            }
            if(dbMovieName.contains("'")){
                dbMovieName=dbMovieName.replaceAll("'", "");      // correctly parses space in search box
            }
            movie.setMoviePoster(image);
            movie.setMovieID(jsonMovie.getInt("id"));
            movie.setReleaseDate(jsonMovie.getString("release_date"));
            movie.setPopularity(jsonMovie.getDouble("popularity"));
            movies.add(movie);
            try {
                databaseManager.addMovies(movie.getMovieID(),dbMovieName,dbOverview,movie.getMoviePoster(),movie.getReleaseDate(),movie.getPopularity());
            } catch (SQLIntegrityConstraintViolationException e) {
            // Duplicate entry
            }
        }
        return movies;
    }
    public ArrayList<Movie> searchMoviesFromDB(String query) throws MalformedURLException, IOException, SQLException{
        return databaseManager.searchMovieFromDB(query);
        
    }
    public ArrayList <Actor> searchActors(String query) throws MalformedURLException, IOException{
        if(query.contains(" ")){
            query=query.replaceAll(" ", "+");      // correctly parses space in search box
        }
        String searchActorsURL = url + "search/person?api_key=" + API_KEY + "&language=en-US&query=" + query;
        JSONObject js = new JSONObject(IOUtils.toString(new URL(searchActorsURL), Charset.forName("UTF-8")));
        JSONArray results = js.getJSONArray("results");
        for(int i=0;i<results.length();i++){
            JSONObject jsonActor = results.getJSONObject(i);
            Actor actor = new Actor();
            actor.setName(jsonActor.getString("name"));
            //actor.setActorPicture(jsonActor.getString("profile_path"));
            actor.setId(jsonActor.getInt("id"));
            String posterURL = "";
            String image = "";
            
            if (!jsonActor.isNull("profile_path") ) {
                posterURL = jsonActor.getString("profile_path");
                image = pic_url+posterURL;
            }
            actor.setActorPicture(image);
            actors.add(actor);
        }
            return actors;
    }
    
    
    public Movie getMovieInfo(int query) throws MalformedURLException, IOException{
        String searchMoviesURL = url + "movie/"+Integer.toString(query)+"?api_key="+API_KEY+ "&language=en-US";
        JSONObject js = new JSONObject(IOUtils.toString(new URL(searchMoviesURL), Charset.forName("UTF-8")));
        
        Movie movie = new Movie();
        movie.setMovieName(js.getString("original_title"));
        movie.setMovieID(js.getInt("id"));
        String posterURL = "";
        String image = "";
            
            if (!js.isNull("poster_path") ) {
                posterURL = js.getString("poster_path");
                image = pic_url+posterURL;
            }
        String backDropURL = "";
        String backDropImage = "";
            
            if (!js.isNull("backdrop_path") ) {
                backDropURL = js.getString("backdrop_path");
                backDropImage = pic_url+backDropURL;
            }
           
        String searchMovieTrailer = url + "movie/"+Integer.toString(query)+"/videos?api_key="+API_KEY+ "&language=en-US";
        JSONObject jsonTrailer = new JSONObject(IOUtils.toString(new URL(searchMovieTrailer), Charset.forName("UTF-8")));
        JSONArray results = jsonTrailer.getJSONArray("results");
        if(results.length()!=0){
            JSONObject jsonMovieTrailer = results.getJSONObject(0);
            movie.setTrailer(jsonMovieTrailer.getString("key"));
        }
        
        movie.setMoviePoster(image);
        movie.setBackDropPoster(backDropImage);
        movie.setReleaseDate(js.getString("release_date"));
        movie.setMovieOverview(js.getString("overview"));
        movie.setTagLine(js.getString("tagline"));
        movie.setRevenue(js.getInt("revenue"));
        movie.setRuntime(js.getInt("runtime"));
        return movie;
    }    
    public Actor getActorInfo(int query) throws MalformedURLException, IOException{
        String searchActorURL = url + "person/"+Integer.toString(query)+"?api_key="+API_KEY+ "&language=en-US";
        JSONObject js = new JSONObject(IOUtils.toString(new URL(searchActorURL), Charset.forName("UTF-8")));
        Actor actor = new Actor();
        actor.setName(js.getString("name"));
        actor.setId(js.getInt("id"));
        String posterURL = "";
        String image = "";
        String biography="";
        if (!js.isNull("profile_path") ) {
            posterURL = js.getString("profile_path");
            image = pic_url+posterURL;
        }
        if (!js.isNull("biography") ) {
            biography = js.getString("biography");
        }
        actor.setActorPicture(image);
        actor.setBiography(biography);
       
        
        return actor;
    }
    public ArrayList <Movie> getActorKnownFor(int query) throws MalformedURLException, IOException{
        String searchKnownForURL = url + "person/"+Integer.toString(query)+"/movie_credits?api_key="+API_KEY+ "&language=en-US";
        JSONObject js = new JSONObject(IOUtils.toString(new URL(searchKnownForURL), Charset.forName("UTF-8")));
        JSONArray results = js.getJSONArray("cast");
        
        for(int i=0;i<results.length();i++){
            JSONObject jsonMovie = results.getJSONObject(i);
            Movie movie = new Movie();
            movie.setMovieName(jsonMovie.getString("original_title"));
            movie.setMovieOverview(jsonMovie.getString("character"));
           
            String posterURL = "";
            String image = "";
            String release_date = "";
            
            if (!jsonMovie.isNull("poster_path") ) {
                posterURL = jsonMovie.getString("poster_path");
                image = pic_url+posterURL;
            }
            if (!jsonMovie.isNull("release_date") ) {
                release_date = jsonMovie.getString("release_date");
                //release_date = pic_url+posterURL;
            }
            movie.setMoviePoster(image);
            movie.setReleaseDate(release_date);
            movie.setMovieID(jsonMovie.getInt("id"));
            movies.add(movie);
        }
        return movies;
    }
    
    public ArrayList <Cast> getMovieCastInfo(int query) throws MalformedURLException, IOException{
        String searchCastURL = url + "movie/"+Integer.toString(query)+"/credits?api_key="+API_KEY;
        JSONObject js = new JSONObject(IOUtils.toString(new URL(searchCastURL), Charset.forName("UTF-8")));
        JSONArray jsonCastArray = js.getJSONArray("cast");
        for(int i=0;i<jsonCastArray.length();i++){
            JSONObject jsonCast = jsonCastArray.getJSONObject(i);
            Cast cast = new Cast();
            cast.setActorName(jsonCast.getString("name"));
            String posterURL = "";
            String image = "";
            
            if (!jsonCast.isNull("profile_path") ) {
                posterURL = jsonCast.getString("profile_path");
                image = pic_url+posterURL;
            }
            cast.setActorPicture(image);
            cast.setCharacter(jsonCast.getString("character"));
            casts.add(cast);
        }
      
        return casts;
    }
    
    public ArrayList <Movie> getNewReleases() throws MalformedURLException, IOException{
        String newestMoviesURL = url + "movie/now_playing?api_key="+ API_KEY+"&language=en-US&page=1";
        JSONObject js = new JSONObject(IOUtils.toString(new URL(newestMoviesURL), Charset.forName("UTF-8")));
        JSONArray results = js.getJSONArray("results");
        for(int i=0;i<results.length();i++){
            JSONObject jsonMovie = results.getJSONObject(i);
            Movie movie = new Movie();
            movie.setMovieName(jsonMovie.getString("original_title"));
            movie.setMovieOverview(jsonMovie.getString("overview"));
            String posterURL = "";
            String image = "";
            
            if (!jsonMovie.isNull("poster_path") ) {
                posterURL = jsonMovie.getString("poster_path");
                image = pic_url+posterURL;
            }
            movie.setMoviePoster(image);
            movie.setMovieID(jsonMovie.getInt("id"));
            movie.setReleaseDate(jsonMovie.getString("release_date"));
            movies.add(movie);
        }
        return movies;
    }
    public ArrayList <Movie> searchMovieByGenre(int genreID) throws MalformedURLException, IOException{
        String searchMoviesURL = url + "genre/"+genreID+"/movies?api_key=" + API_KEY + "&language=en-US&include_adult=false&sort_by=created_at.asc";
        
      JSONObject js = new JSONObject(IOUtils.toString(new URL(searchMoviesURL), Charset.forName("UTF-8")));
        JSONArray results = js.getJSONArray("results");
        for(int i=0;i<results.length();i++){
            JSONObject jsonMovie = results.getJSONObject(i);
            Movie movie = new Movie();
            movie.setMovieName(jsonMovie.getString("original_title"));
            movie.setMovieOverview(jsonMovie.getString("overview"));
            String posterURL = "";
            String image = "";
            if (!jsonMovie.isNull("poster_path") ) {
                posterURL = jsonMovie.getString("poster_path");
                image = pic_url+posterURL;
            }
           
            movie.setMoviePoster(image);
            movie.setMovieID(jsonMovie.getInt("id"));
            movie.setReleaseDate(jsonMovie.getString("release_date"));
            movie.setPopularity(jsonMovie.getDouble("popularity"));
            movies.add(movie);
        }
        return movies;
    }
    
    public ArrayList<Movie> getMovies() {
        return movies;
    }

    public void setArtists(ArrayList<Movie> movies) {
        this.movies = movies;
    }

}
