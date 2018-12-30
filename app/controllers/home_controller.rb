class HomeController < ApplicationController
  include ReverseProxy::Controller

  def welcome
    
  end

  def index
    raise "h"
    # Assuming the WordPress server is being hosted on port 8080
    reverse_proxy "http://localhost:3005/", path: params[:path] do |config|
      
      config.on_response do |code, response|
        Rails.logger.debug "\n\n..RESPONSE....#{code}..#{response.body.inspect}...\n"
      end   

      config.on_error do |code, response|
        Rails.logger.debug "\n\n..ERROR...#{code}..#{response.body.inspect}...\n"
      end   

      config.on_complete do |code, response|
        Rails.logger.debug "\n\n..COMPLETE...#{code}..#{response.body.inspect}...\n"
      end  

      config.on_success do |code, response|
        Rails.logger.debug "\n\n..SUCCESS...#{code}..#{response.body.inspect}...\n"
      end    
     
      # We got a 404!
      config.on_missing do |code, response|
        Rails.logger.debug "\n\n.MISSING...#{code}..#{response.body.inspect}...\n"
        #raise "h"
        #redirect_to root_url and return
      end
      
      # There's also other callbacks:
      # - on_set_cookies
      # - on_connect
      # - on_response
      # - on_set_cookies
      # - on_success
      # - on_redirect
      # - on_missing
      # - on_error
      # - on_complete
    end
  end
end
