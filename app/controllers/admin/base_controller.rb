class Admin::BaseController < ActionController::Base
	protect_from_forgery with: :exception
	before_filter :authenticate_user!
	layout 'admin'
end