class FaqController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  
  def index
    @faqs = Faq.visible 
  end 
end
