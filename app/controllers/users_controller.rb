class UsersController < ApplicationController
=begin
  def index
    puts "*** params : #{params}"
    @u = params.has_key?(:id) ? 
           User.where(:id => params[:id]) : User.all()
    puts "*** @u: #{@u}"
    render json: @u
  end

  def show
    puts "*** params : #{params}"
    @u = params.has_key?(:id) ? 
           User.where(:id => params[:id]) : User.all()
    puts "*** @u: #{@u}"
    render json: @u
  end
=end
end
