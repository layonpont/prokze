class AdminsController < ApplicationController

  def show
    @admin = Admin.find(params[:id])
    @prev_state= params[:state]
  end
end