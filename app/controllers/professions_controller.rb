class ProfessionsController < ApplicationController
  
  def index
    @professions = Profession.all # TODO: matching algorithm to only show matching professions
  end

  def show
    @profession = Profession.find(params[:id])
  end

private
  def set_profession
    @profession = Profession.find(params[:id])
  end
end
