class ResearchorderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.jobapp_mailer.application_creation.subject
  #
  def research_order(researchorder)
    @researchorder = researchorder # Instance variable => available in view

    mail(
      to: "petya@lightclock.org",
      subject:  "RESEARCH ORDER!"
    )
    # This will render a view in `app/views/user_mailer`!
  end
end
