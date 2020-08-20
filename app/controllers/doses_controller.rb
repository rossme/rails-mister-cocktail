class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(doses_params)
    @dose.save
    if @dose.save
      redirect_to dose_path(@dose)
    else
      render :new
    end
  end

  def destroy
  end

  private

  def doses_params
    params.require(:dose).permit(:description)
  end
end
