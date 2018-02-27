class ContactsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    lead_email = params.permit(:email)[:email]
    LeadMailer.email(lead_email).deliver

    flash[:notice] = "Thank you! We'll be in touch shortly."
    redirect_to root_path
  end
end