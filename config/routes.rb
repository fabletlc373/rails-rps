Rails.application.routes.draw do
  get("/rock", {:controller => "game", :action => "user_played_rock"})
  get("/scissors", {:controller => "game", :action => "user_played_scissors"})

  get("/paper", {:controller => "game", :action => "user_played_paper"})


  get("/", {:controller => "game", :action => "go_home"})
end
