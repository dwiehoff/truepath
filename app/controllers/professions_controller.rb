class ProfessionsController < ApplicationController
  def show
    @profession = Profession.find(params[:id])
  end

private
  def set_profession
    @profession = Profession.find(params[:id])
  end
end
