# Preview all emails at http://localhost:3000/rails/mailers/enquiry_mailer
class EnquiryMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/enquiry_mailer/send_precon
  def send_precon
    enq = Enquiry.first

    # EnquiryMailer.send_precon
    EnquiryMailer.with(enquiry: enq).send_precon
  end

end
