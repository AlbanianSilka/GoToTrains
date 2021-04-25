# frozen_string_literal: true

# Class for tickets buttons
module Admin
  class TicketsController < Admin::BaseController
    before_action :set_ticket, only: %i[show edit update destroy]
    before_action :authenticate_user!, only: :create

    def index
      @tickets = Ticket.all
    end

    def show; end

    def new
      @ticket = Ticket.new
    end

    def create
      @ticket = Ticket.new(ticket_params)

      if @ticket.save
        redirect_to admin_ticket_path(@ticket)
      else
        render :new
      end
    end

    def edit; end

    def update
      if @ticket.update(ticket_params)
        redirect_to admin_ticket_path(@ticket)
      else
        render :new
      end
    end

    def destroy
      @ticket.destroy

      redirect_to admin_tickets_path
    end

    private


    def set_ticket
      @ticket = Ticket.find(params[:id])
      @user_first_name = current_user.first_name
      @user_last_name = current_user.last_name
      @user_id = current_user.id
    end

    def ticket_params
      params.require(:ticket).permit(:user_id, :user_passport, :train_id, :first_station_id, :last_station_id,
                                     :user_first_name, :user_last_name)
    end
  end
end
