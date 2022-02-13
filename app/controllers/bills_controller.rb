class BillsController < ApplicationController
  def index
    @bills = Bill.order(id: :desc)
    render json: @bills
  end
end
