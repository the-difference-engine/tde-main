class ContactsController < ApplicationController
  def create
    ContactsMailer.contact_us(params[:name], params[:email], params[:message]).deliver_now
    render json: {message: "Success!"}
  end
end
