class Contact < MailForm::Base
  attribute :name, :validate => true
  attribute :email,     :validate => /\b[\w\.-]+@[\w\.-]+\.\w{2,4}\b/i
  attribute :message,   :validate => true
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "Contact Form",
      :to => "marinesourin@live.fr",
      :from => %("#{name}" <#{email}>)
    }
  end
end
