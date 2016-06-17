class ContactsMailer < ApplicationMailer
  default from: "hello@anyonecanhaveawebsite.com"

  def contact_us(contact)
    @contact = contact
    mail(from: @contact.email, to: "ryan@anyonecanhaveawebsite.com", subject: 'Contact Us')
  end
end
