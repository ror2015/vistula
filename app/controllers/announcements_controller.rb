class AnnouncementsController < Admin::ApplicationController
  before_action :set_announcement, only: [:show]

  # GET /announcements
  def index
    @announcements = Announcement.all
    respond_to do |format|
      format.json {render json: @announcements.to_json}
      format.html
    end
  end

  def show

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_announcement
      @announcement = Announcement.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def announcement_params
      params.require(:announcement).permit(:title, :content)
    end
end
