Rails.application.routes.draw do
  
  get "/params_game" => "params#name_game"

  get "/number/:user_number" => "params#number_game"
end
