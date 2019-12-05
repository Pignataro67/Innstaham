class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  before_action :set_previous_url
  helper_method :previous_url

    def set_previous_url
      if request.method == :get && session[:previous_url] != session[:current_url]
        session[:previous_url] == session[:current_url]
        session[:current_url] = request.url
      end
    end

    def previous_url
      @last_page = session[:previous_url]
    end


    def index
    end


    def current_user
      if session[:user_id] == nil
        # redirect_to users_path
        return nil
      else
      @current_user = User.find(session[:user_id])
      end
    end

    def authorization?
      current_user.id == params[:id].to_i
    end

    def authorized_on_picture
      current_user.id == params[:user_id].to_i
    end
  end
