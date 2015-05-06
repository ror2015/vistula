class Admin::AttendencesController < Admin::BaseController

  def index
    @attendences=Attendence.all
  end
  private

  def attendence_params
    params.require(:attendence).permit()
  end
  
end
