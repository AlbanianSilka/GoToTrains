class TicketsMailer < ApplicationMailer
  def buy_ticket(user, ticket)
    @user = user
    @ticket = ticket
    mail(to: user.email, subject: 'Ви купили квиток')
  end

  def return_ticket(user, ticket)
    @user = user
    @ticket = ticket
    mail(to: user.email, subject: 'Ви повернули квиток')
  end
end
