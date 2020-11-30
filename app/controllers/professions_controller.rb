class ProfessionsController < ApplicationController

  def index
    @professions = Profession.all # TODO: matching algorithm to only show matching professions
  end

  def jobs
    @title = params[:title]
    @jobs = [
      {
        title: @title,
        company: "ImmoScout24",
        location: "Berlin",
        skills: ['strategic thinking', 'business', 'design', 'ux'],
        description: 'We are looking for a self-driven and passionate product manager to join us in bringing the Messenger for our consumers to the next level. You will be responsible for the Consumer part of the messenger and the backend service where all conversation data is handled for the different clients. The communication between our consumers, who are looking for a new home, and our real estate agents is one of the critical pieces in the ImmoScout24 ecosystem.'
      },
      {
        title: "Principal #{@title}",
        company: "Zalando",
        location: "Berlin",
        skills: %w[sales business ux data],
        description: "As Principal Product Manager in Zalando Marketing Services, you will shape the future of Europe's biggest fashion ad platform. You will own the data and machine learning infrastructure which is a key component in driving marketing value to Zalando brands. You will interact with Zalando merchants and brands as well as Zalando customers and influencers to develop a deep understanding of the relationships among customers, fashion products and fashion brands. You will work with Zalando engineers and applied scientists to build the data infrastructure and machine learning models necessary to capture these relationships and provide them to ad platform components as a means of driving efficiencies into the ZMS ad marketplace."
      },
      {
        title: "#{@title} / product owner",
        company: "interact.io",
        location: "Berlin",
        skills: ['strategic thinking', 'certification', 'ux'],
        description: 'We are seeking an ambitious, self-motivated technical Product Manager to help us design, develop and launch the next set of industry leading Enterprise Cloud Solutions and successfully deliver reference implementations of our software with key clients worldwide. Applicants should enjoy working in a fast paced and customer-oriented environment in a highly collaborative international team.'
      }
    ]
  end

  def show
    @profession = Profession.find(params[:id])
  end

  private

  def set_profession
    @profession = Profession.find(params[:id])
  end

  def compare
    
  end
end
