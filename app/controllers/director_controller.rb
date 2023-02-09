class DirectorController < ApplicationController
  def list_directors

 
    @list_of_directors = Director.all


    render( :template => "directors/list.html.erb"  )

  end 

  def eldest

    list_of_directors = Director.all
    @organized = list_of_directors.where.not({:dob => nil }).order({:dob => :asc })
    @eld_dir = @organized.first

    render( :template => "directors/eldest.html.erb")
  end


  def youngest
    list_of_directors = Director.all
    @organized = list_of_directors.where.not({:dob => nil }).order({:dob => :desc })
    @you_dir = @organized.first

    render( :template => "directors/youngest.html.erb")
  end


  def dir_detail
    @dir_id = params.fetch("path_id")
    
    list_of_directors = Director.all
    @direct = list_of_directors.where({:id => @dir_id}).at(0)

    list_of_movies = Movie.all
    @movies = list_of_movies.where({:director_id => @dir_id})

    render(:template => "directors/detail.html.erb")

  end
end
