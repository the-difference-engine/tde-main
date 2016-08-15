class ContactsMailer < ApplicationMailer
  default from: "hello@thedifferenceengine.io"

  def contact_us(contact)
    @contact = contact
    mail(from: @contact.email, to: "hello@thedifferenceengine.io", subject: 'New Contact Us Message')
  end
end
