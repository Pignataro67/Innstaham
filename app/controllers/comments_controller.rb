class CommentsController < ApplicationController
  before_action :set_info, only: [:edit, :update, :destroy, :create]
  
  private
  def set_info
    @user = User.find(params[:user_id])
    @picture = Picture.find(params[:picture_id])
  end
end