# frozen_string_literal: true

# Class for tickets buttons
class TicketsController < ApplicationController
  before_action :set_ticket, only: %i[show update destroy]
  before_action :authenticate_user!, only: :create
  before_action :set_user_name

  def index
    @tickets = Ticket.all
  end

  def show; end

  def new
    @ticket = Ticket.new
    @user_id = current_user.id
  end

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      redirect_to @ticket
    else
      render :new
    end
  end


  def update
    if @ticket.update(ticket_params)
      redirect_to @ticket
    else
      render :new
    end
  end

  def destroy
    @ticket.destroy

    redirect_to tickets_path
  end


  private

  def set_user_name
    @user_first_name = current_user.first_name
    @user_last_name = current_user.last_name
    @user_id = current_user.id
  end

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:user_id, :user_passport, :train_id, :first_station_id, :last_station_id, :user_first_name, :user_last_name)
  end
end

