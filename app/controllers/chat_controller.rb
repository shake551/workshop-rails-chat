class ChatController < ApplicationController
  def index
    @messages = Message.all.order(id: :desc)
  end

  def create
    m = Message.new
    m.name = params[:name]
    m.message = params[:message]

    if m.valid? && m.save
      redirect_to action: :index
      return
    end

  flash[:errors] = m.errors.full_messages
  render :create, status: :unprocessable_entry
  end
end

