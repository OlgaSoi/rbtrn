class UsersController < ApplicationController
  def show
    puts "*** params : #{params}"
    @u = params.has_key?(:id) ? 
           User.where(:id => params[:id]) : User.all()
    render json: @u
  end
end
