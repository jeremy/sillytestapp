class ApplicationController < ActionController::Base
  session :off
  helper :all
  protect_from_forgery
end
