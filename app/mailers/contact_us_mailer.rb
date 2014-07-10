class ContactUsMailer < ActionMailer::Base
  default from: "blur606@gmail.com"

  def contact_us_message(user)

	  mail :to => user, :from => "blur606@gmail.com", :subject => "Subject line"

  end
end
