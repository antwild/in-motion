class EnquiryMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiry_mailer.send_precon.subject
  #

  def hello
    @enquiry = params[:enquiry]
    mail(
      :subject => 'Hello from Postmark',
      :to  => @enquiry[:email],
      :html_body => "<strong>Hello</strong> dear Postmark user. #{@enquiry.reason}",
      :track_opens => 'true')
  end

  def send_precon
    @enquiry = params[:enquiry]
    @url = "http://localhost:3000/preconsultations/new"
    mail(to: @enquiry[:email], subject: "Book your In Motion Food Company consultation")
  end

  def new_enq
    @enquiry = params[:enquiry]
    mail(to: "antwildy@gmail.com", subject: "New enquiry for a preconsultation form")
  end
end
