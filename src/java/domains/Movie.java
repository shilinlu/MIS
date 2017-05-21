/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package domains;

import java.util.ArrayList;

/**
 *
 * @author shilinlu
 */
public class Movie {
    private int movieID;
    private String movieName;
    private String movieOverview;
    private String moviePoster;
    private String backDropPoster;
    private String releaseDate;
    private double popularity;
    private String tagLine;
    private String trailer;
    private int revenue;
    private int runtime;
    private ArrayList <String> cast;
    
    public String getTrailer() {
        return trailer;
    }

    public void setTrailer(String trailer) {
        this.trailer = trailer;
    }
    

    public int getRevenue() {
        return revenue;
    }

    public void setRevenue(int revenue) {
        this.revenue = revenue;
    }

    public int getRuntime() {
        return runtime;
    }

    public void setRuntime(int runtime) {
        this.runtime = runtime;
    }
   
    
    public String getTagLine() {
        return tagLine;
    }

    public String getBackDropPoster() {
        return backDropPoster;
    }

    public void setBackDropPoster(String backDropPoster) {
        this.backDropPoster = backDropPoster;
    }

    public void setTagLine(String tagLine) {
        this.tagLine = tagLine;
    }
   
    
    public int getMovieID() {
        return movieID;
    }

    public void setMovieID(int movieID) {
        this.movieID = movieID;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getMovieOverview() {
        return movieOverview;
    }

    public void setMovieOverview(String movieOverview) {
        this.movieOverview = movieOverview;
    }

    public String getMoviePoster() {
        return moviePoster;
    }

    public void setMoviePoster(String moviePoster) {
        this.moviePoster = moviePoster;
    }

    public String getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(String releaseDate) {
        this.releaseDate = releaseDate;
    }

    public double getPopularity() {
        return popularity;
    }

    public void setPopularity(double popularity) {
        this.popularity = popularity;
    }

    public ArrayList<String> getCast() {
        return cast;
    }

    public void setCast(ArrayList<String> cast) {
        this.cast = cast;
    }
    
}
