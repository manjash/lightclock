class Contact < MailForm::Base

  attribute :name,      validate: true
  attribute :email,     validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   validate: true
  attribute :text,      validate: true
  attribute :website,   validates_format_of: :domain_name, :with =>
  /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix
  attribute :nickname,  captcha: true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.

  def headers
    {
      :subject => "THINKER REQUEST",
      :to => "petiaaa182@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end

end
