class ContactsController < ApplicationController
  invisible_captcha only: [:create], honeypot: :subhead

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactsMailer.contact_us(@contact).deliver_now
      redirect_to root_path(anchor: 'contact-us-redirect')
      flash[:notice] = "Your message has been sent!"
    end
  end

  private
    def contact_params
      params.require(:contact).permit(:name, :email, :message)
    end
end
