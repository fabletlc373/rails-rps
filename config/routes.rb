Rails.application.routes.draw do
  get("/rock", {:controller => "game", :action => "user_played_rock"})

  get("/", {:controller => "game", :action => "go_home"})
end
