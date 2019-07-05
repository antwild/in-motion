# Preview all emails at http://localhost:3000/rails/mailers/preconsultation_mailer
class PreconsultationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/preconsultation_mailer/pre_confirm
  def pre_confirm
    PreconsultationMailer.pre_confirm
  end

  # Preview this email at http://localhost:3000/rails/mailers/preconsultation_mailer/new_precon
  def new_precon
    PreconsultationMailer.new_precon
  end

end
