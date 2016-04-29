class TwilioController < ApplicationController
  skip_before_action :verify_authenticity_token
  def respond
    message = params['Body'].chomp
    team = Team.find_by(phone_number: params["From"][1..-1])
    if team == nil
      Team.create(name: "undefined", score: 0, phone_number: params["From"][1..-1])
    end
    Message.create(content: message, phone_number: params["From"][1..-1])
    response = Twilio::TwiML::Response.new do |r|
      r.Message = ""
    end.text.gsub("Message=", "Message")

    render inline: response, content_type: 'application/xml'
  end
end