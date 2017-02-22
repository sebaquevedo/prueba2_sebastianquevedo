class WorksController < ApplicationController
  def index
  	@i = Item.all
  end

  # def delete
  # 	Item.find_by(id:elem).destroy
  # end

  def delete
  	@item = Item.find(params[:id])
  	@item.destroy
  	redirect_to :action => 'index'
	end
end
