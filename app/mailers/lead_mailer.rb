class LeadMailer < ApplicationMailer
  default from: "hello@thedifferenceengine.io"

  def new_lead(lead)
    @lead = lead
    mail(from: @lead.email, to: "hello@thedifferenceengine.io", subject: 'New Project Lead Created')
  end
end
