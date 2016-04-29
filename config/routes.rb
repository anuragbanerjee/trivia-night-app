Rails.application.routes.draw do
  root 'single_views#index'
  get "/correct" => 'single_views#correct'
  get "/incorrect" => 'single_views#incorrect'
  get "/triple-incorrect" => 'single_views#triple_incorrect'
  get "/triple-correct" => 'single_views#triple_correct'
  get "/scoreboard" => 'single_views#scoreboard'
  scope "hooks" do
    get "/twilio" => 'twilio#respond'
  end
end
