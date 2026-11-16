Rails.application.routes.draw do
  # GET /ask → action ask du contrôleur questions (le formulaire)
  get "/ask", to: "questions#ask"
  # GET /answer → action answer du contrôleur questions (la réponse)
  get "/answer", to: "questions#answer"

  get "up" => "rails/health#show", as: :rails_health_check
end
