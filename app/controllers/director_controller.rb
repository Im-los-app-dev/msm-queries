class DirectorController < ApplicationController
  def list_directors

    @list_of_directors = Director.all


    render( :template => "directors/list.html.erb"  )

  end 

  def eldest

    render( :template => "directors/eldest.html.erb")
  end


end
