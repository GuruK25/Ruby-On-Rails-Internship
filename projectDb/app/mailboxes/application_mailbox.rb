class ApplicationMailbox < ActionMailbox::Base
  # routing /something/i => :somewhere
  routing all: :support
  #All the mails will come to support

  # routing @any_domain    (Can add any domains.)
end
