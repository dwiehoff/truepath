class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  module ApplicationHelper
    # def title(text)
    #   content_for :title, text
    # end

    # def meta_tag(tag, text)
    #   content_for :"meta_#{tag}", text
    # end

    # def yield_meta_tag(tag, default_text = '')
    #   content_for?(:"meta_#{tag}") ? content_for(:"meta_#{tag}") : default_text
    # end
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end
