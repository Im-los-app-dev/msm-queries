Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })


  get( "/directors", { :controller=> "director", :action=> "list_directors" })
  get( "/directors/eldest", { :controller=> "director", :action=> "eldest" } )
  get( "/directors/youngest", { :controller=> "director", :action=> "youngest" } )
 
  get( "/directors/:path_id", { :controller=> "director", :action=> "dir_detail" } )


  get( "/movies", { :controller=> "movie", :action=> "index" })

  get( "/movies/:path_id", { :controller=> "movie", :action=> "mov_detail" } )

  get( "/actors", { :controller=> "actor", :action=> "index" })
  get( "/actors/:path_id", { :controller=> "actor", :action=> "actor_detail" } )

end
