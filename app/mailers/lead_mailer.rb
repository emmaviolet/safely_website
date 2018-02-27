class LeadMailer < ActionMailer::Base
  default from: "safelyspokenleads@gmail.com"

  def email(lead)
    @lead = lead
    mail(to: 'emmavioletmakinson@gmail.com', subject: 'New lead!')
  end
end