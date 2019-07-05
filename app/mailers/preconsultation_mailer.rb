class PreconsultationMailer < ApplicationMailer

  def pre_confirm
    @preconsultation = params[:preconsultation]
    mail(to: @preconsultation.client[:email], subject: "We have received your preconsultation")
  end

  def new_precon
    @preconsultation = params[:preconsultation]
    mail(to: "antwildy@gmail.com", subject: "New preconsultation form from In Motion Food Co.")
  end
end
