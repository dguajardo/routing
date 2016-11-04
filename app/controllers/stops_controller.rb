class StopsController < ApplicationController
  def index
    @stops = Stop.all
  end

def import
   Upload.import(params[:file])
   redirect_to root_url, notice: "Imported"
  end 
end
