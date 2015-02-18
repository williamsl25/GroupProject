class EmployerController < ApplicationController
def index
    @employers = Employer.all
  end

  def show
    set_employer
  end

  def new
    @employer = Employer.new
  end

  def create
    @employer = Employer.create employer_params
    redirect_to employer_path(@employer)
  end

  def edit
    set_employer
  end

  def update
    set_employer
    @employer.update_attributes employer_params
    redirect_to employer_path(@employer)
  end

  def destroy
    set_employer
    @employer.destroy
    redirect_to employers_path
  end

  private
  def set_employer
    @employer = Employer.find params[:id]
  end

  def employer_params
    params.require(:employer).permit(
      :name,
      :photo,
      :bio,
      :industry,
      :size,
      :date_founded,
      :email,
      )
  end
end
