class ContactsController < ApplicationController
  def index
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      render :index, notice: 'Message sent successfully'
    else
      flash.now[:error] = 'Cannot send message'
      render :index
    end
  end
end
