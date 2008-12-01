class ApplicationController < ActionController::Base
  session :off
  helper :all
  protect_from_forgery

  around_filter :action_profiler
end
