Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })


  get( "/directors", { :controller=> "director", :action=> "list_directors" })
  
  get( "/directors/eldest", { :controller=> "director", :action=> "eldest" } )


end
