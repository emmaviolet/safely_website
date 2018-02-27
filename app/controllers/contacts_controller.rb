class ContactsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    lead_email = params.permit(:email)[:email]
    LeadMailer.email(lead_email).deliver

    redirect_to root_path
  end
end