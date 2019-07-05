class EnquiryMailer < ApplicationMailer

  def send_precon
    @enquiry = params[:enquiry]
    # NEED TO SET FOR PRODUCTION
    @url = "http://localhost:3000/clients/new"
    mail(to: @enquiry[:email], subject: "Book your In Motion Food Company consultation")
  end

  def new_enq
    @enquiry = params[:enquiry]
    # NEED TO SET EMAIL FOR PRODUCTION
    mail(to: ENV['NEEDTOSET'], subject: "New enquiry for a preconsultation form")
  end
end
