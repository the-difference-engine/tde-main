class LeadsController < ApplicationController
  invisible_captcha only: [:create], honeypot: :subtitle

  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(lead_params)

    if @lead.save
      LeadMailer.new_lead(@lead).deliver_now
      flash[:notice] = "Thanks for reaching out—we will contact you shortly!"
      redirect_to :root
    else
      render 'new'
      flash[:warning] = "Something went wrong."
    end

  end

  private

    def lead_params
      params.require(:lead).permit(:name, :email, :phone, :company, :company_kind,
      :role, :website, :hear_about_tde, need_ids:[])
    end
end
