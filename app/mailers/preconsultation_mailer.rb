class PreconsultationMailer < ApplicationMailer

  def pre_confirm
    @preconsultation = params[:preconsultation]

    mail(to: @preconsultation[:email])
  end

  def new_precon
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end


def send_precon
  @enquiry = params[:enquiry]
  # NEED TO SET FOR PRODUCTION
  @url = "http://localhost:3000/preconsultations/new"
  mail(to: @enquiry[:email], subject: "Book your In Motion Food Company consultation")
end
