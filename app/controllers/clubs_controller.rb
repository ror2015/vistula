class ClubsController < ApplicationController
  before_action :set_club, only: [:show, :edit, :update, :destroy, :join]

  # GET /clubs
  def index
    @clubs = Club.all
  end

  # GET /clubs/1
  def show
  end

  def join
    @club.club_users.build(user_id: current_user.id, status: 'pending')
    if @club.save
      redirect_to @club, notice: 'Request was sent successfully.'
    else
      render :index
    end
  end

  # GET /clubs/new

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club
      @club = Club.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def club_params
      params.require(:club).permit(:name, :description, :logo)
    end
end
