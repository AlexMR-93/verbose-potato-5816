class CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
  end

  def new
  end

  def create
    item = Item.new(item_params)

    if item.save
      redirect_to("/customers/#{item_params[:customer_id]}/")
    else
      "error"
    end
  end

  private

  def item_params
    params.permit(:name, :price)
  end
end
