class ActorController < ApplicationController

def index


  @list_of_actors = Actor.all




  render(:template => "actors/index.html.erb")


end

def actor_detail
  @act_id = params.fetch("path_id")
  
  @list_of_actors = Actor.all
  @actor = @list_of_actors.where({:id => @act_id}).at(0)

  @charlist = Character.all
  @char = @charlist.where({:actor_id => @act_id})

  @list_of_movies = Movie.all

  @direct = Director.all
 

  render(:template=> "actors/act_ind.html.erb")

end

  

end
