class EnquiriesController < ApplicationController
  def show
    @enquiry = Enquiry.find(params[:id])
  end

  def new
    @enquiry = Enquiry.new
  end

  def create
    @enquiry = Enquiry.new(enquiry_params)
    if @enquiry.save
      EnquiryMailer.with(enquiry: @enquiry).send_precon.deliver_now
      redirect_to enquiry_path(@enquiry)
    else
      render :new
    end
  end

  private

  def enquiry_params
    params.require(:enquiry).permit(Enquiry.column_names)
  end
end
