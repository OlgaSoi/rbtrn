class SourceProvidersController < ApplicationController
  def show
    puts "*** params : #{params}"
    @sp = 
    if params.has_key?(:id)
      SourceProvider.where(:id => params[:id] )
    else
      SourceProvider.all()
    end
    render json: @sp
  end
  def index
    render json: {:provider => 'rr17-api', :version => '1' }.to_json
  end
end
