class Contact < MailForm::Base

  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message   # :validate => true
  attribute :something   #   :validate => true
  # attribute :website
  attribute :nickname,  :captcha => true
  attribute :file,      :attachment => true
  # validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

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
