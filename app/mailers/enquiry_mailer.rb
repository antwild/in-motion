class EnquiryMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiry_mailer.send_precon.subject
  #
  def send_precon
    @enquiry = params[:enquiry]
    @url = "http://localhost:3000/preconsultations/new"
    mail(to: @enquiry[:email], subject: 'Book your In Motion Food Company consultation')
  end
end
