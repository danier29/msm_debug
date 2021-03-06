class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new_form
    render("movies/new_form.html.erb")
  end

  def create_row
    @movie = Movie.new
    @movie.title = params[:the_title]
    @movie.year = params[:the_year]
    @movie.duration = params[:the_duration]
    @movie.description = params[:the_description]
    @movie.image_url = params[:the_image_url]
    @movie.director_id = params[:the_director_id]
    @movie.save
    redirect_to("/movies")
  end

  def edit_form
    @movie = Movie.find(params[:id])
    render("/movies/edit_form.html.erb")
  end

  def update_row
    @movie = Movie.find(params[:id])
    @movie.title = params[:the_title]
    @movie.year = params[:the_year]
    @movie.duration = params[:the_duration]
    @movie.description = params[:the_description]
    @movie.image_url = params[:the_image_url]
    @movie.director_id = params[:the_director_id]
    @movie.save
    render("show")
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to("/movies")
  end
end
