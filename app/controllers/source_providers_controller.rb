class SourceProvidersController < ApplicationController
  def show
    puts "*** params : #{params}"

    cond = {:active => true}
    cond[:id] = params[:id] if params.has_key?(:id) 
    @sp = SourceProvider.where(cond)

    if @sp.empty?
      render json: "There is no such value".to_json
    else
      render json: @sp
    end
  end
  def index
    render json: {:provider => 'rr17-api', :version => '1' }.to_json
  end
end
