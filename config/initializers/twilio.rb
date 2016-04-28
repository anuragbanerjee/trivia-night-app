require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'

# put your own credentials here
account_sid = ENV['twilio_sid']
auth_token = ENV['twilio_token']

Twilio.configure do |config|
  config.account_sid = account_sid
  config.auth_token = auth_token
end