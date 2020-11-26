class ProfessionsController < ApplicationController
  def index
    @professions = Profession.all # TODO: matching algorithm to only show matching professions
  end
end
