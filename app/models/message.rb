class Message < MailForm::Base

  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :organisation
  attribute :phone,     :validate => true
  attribute :research_subject,    :validate => true
  attribute :file,      :attachment => true
  attribute :nickname,  :captcha => true
  attribute :time
  attribute :timezone,  :validate => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.

  def headers
    {
      :subject => "RESEARCH REQUEST",
      :to => "petya@lightclock.org",
      :from => %("#{name}" <#{email}>)
    }
  end
end
