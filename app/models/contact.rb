class Contact < MailForm::Base

  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :website
  attribute :field,     :validate => true
  attribute :degree,    :validate => true
  attribute :file,      :attachment => true
  attribute :nickname,  :captcha => true
  attribute :link,      :validate => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.

  def headers
    {
      :subject => "THINKER REQUEST",
      :to => "petya@lightclock.org",
      :from => %("#{name}" <#{email}>)
    }
  end

end
