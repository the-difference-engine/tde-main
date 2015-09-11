class ContactsMailer < ApplicationMailer
  default from: "hello@anyonecanhaveawebsite.com"

  def contact_us(name, email, message)
    @name = name
    @email = email
    @message = message
    mail(from: email, to: "hello@anyonecanhaveawebsite.com", subject: 'Contact Us')
  end
end
