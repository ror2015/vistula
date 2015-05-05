class ApplyFormsController < ApplicationController
	before_action :set_apply_form, only: [:show, :edit, :update, :destroy]

  # GET /apply_form
  def index
    @apply_form = ApplyForm.all
  end

  # GET /apply_form/1
  def show
  end

  # GET /apply_form/new
  def new
    @apply_form = ApplyForm.new
  end

  # GET /apply_form/1/edit
  def edit
  end

  # apply_form /apply_form
  def create
    
    @apply_form = ApplyForm.new(apply_form_params)
    @apply_form.user_id = current_user.id if current_user
    @apply_form.save

    @offer = @apply_form.offer
    if @apply_form.save
      redirect_to offer_path(@offer)
    else
      render 'new'
    end
  end

  # PATCH/PUT /offers/1
  def update
    if @offer.update(offer_params)
      redirect_to @apply_form, notice: 'apply_form was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /apply_form/1
  def destroy
    @apply_form.destroy
    redirect_to apply_form_url, notice: 'apply_form was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def apply_form
      @apply_form = ApplyForm.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def apply_form_params
      params.require(:apply_form).permit(:CV, :offer_id)
    end

end
