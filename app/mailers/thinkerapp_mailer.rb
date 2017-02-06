class ThinkerappMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.jobapp_mailer.application_creation.subject
  #
  def application_creation(thinkerapp)
    @thinkerapp = thinkerapp # Instance variable => available in view

    mail(
      to: "petya@lightclock.org",
      subject:  "THINKER APPLICATION!"
    )
    # This will render a view in `app/views/user_mailer`!
  end
end
