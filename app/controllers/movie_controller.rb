class MovieController < ApplicationController

  def index

    @movies = Movie.all
   
    @list_of_directors = Director.all




    render(:template => "movie/index.html.erb")
  end

  def mov_detail
    @mov_id = params.fetch("path_id")
    
    list_of_movies = Movie.all
    @movie = list_of_movies.where({:id => @mov_id}).at(0)

    dir_list = Director.all
    @dir = dir_list.where({ :id => @mov_id}).at(0)

    render(:template => "movie/ind.html.erb")

  end




end
