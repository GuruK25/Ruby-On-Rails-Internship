class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"   #The mails sent will be sent from this mail(sender email)
  layout "mailer"
end
