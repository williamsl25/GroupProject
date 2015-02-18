class GraduatesController < ApplicationController
  def index
    @graduates = Graduate.all
  end

  def show
    set_graduate
  end

  def new
    @graduate = Graduate.new
  end

  def create
    @graduate = Graduate.create graduate_params
    redirect_to graduate_path(@graduate)
  end

  def edit
    set_graduate
  end

  def update
    set_graduate
    @graduate.update_attributes graduate_params
    redirect_to graduate_path(@graduate)
  end

  def destroy
    set_graduate
    @graduate.destroy
    redirect_to graduates_path
  end

  private
  def set_graduate
    @graduate = Graduate.find params[:id]
  end

  def graduate_params
    params.require(:graduate).permit(
      :first_name,
      :last_name,
      :photo,
      :bio,
      :current_city,
      :current_state,
      :grad_city,
      :grad_state,
      :email,
      :grad_date
      )
  end
end
