class LeadMailer < ActionMailer::Base
  default from: "safelyspokenleads@gmail.com"

  def email(lead)
    @lead = lead
    emails = [
      'emmavioletmakinson@gmail.com',
      'emma@safelyspoken.com',
      'george@safelyspoken.com',
      'gftclements@gmail.com'
    ]
    mail(to: emails, subject: 'New lead!')
  end
end