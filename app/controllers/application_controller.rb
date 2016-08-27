class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include ActionController::Caching::Pages if Rails.env.production?
end
