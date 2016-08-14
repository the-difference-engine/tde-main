class ContactsMailer < ApplicationMailer
  default from: "hello@anyonecanhaveawebsite.com"

  def contact_us(contact)
    @contact = contact
    mail(from: @contact.email, to: "ryan@anyonecanhaveawebsite.com", subject: 'New Contact Us Message')
  end
end
