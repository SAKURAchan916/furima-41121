class ItemsController < ApplicationController
    before_action :set_items, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

#   def index
#     @items = Item.all
#   end

  def new
    @items = item.new
  end

#   def create
#     Tweet.create(item_params)
#     redirect_to '/'
#   end

   def destroy
     item = item.find(params[:id])
     item.destroy
     redirect_to root_path
   end

#   def edit
#   end

#   def update
#     item = item.find(params[:id])
#     item.update(item_params)
#     redirect_to root_path
#   end

#   def show
#   end

#   private
#   def item_params
#     params.require(:item).permit(:name, :image, :text)
#   end

#   def set_tweet
#     @item = item.find(params[:id])
#   end

#   def move_to_index
#     unless user_signed_in?
#       redirect_to action: :index
#     end
  #end
end
