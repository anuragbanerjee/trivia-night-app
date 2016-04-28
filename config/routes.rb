Rails.application.routes.draw do
  root 'single_views#index'
  scope "hooks" do
    get "/twilio" => 'twilio#respond'
  end
end
