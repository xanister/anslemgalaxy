class StaticController < ApplicationController
  before_filter :authenticate_user!, :except => [:welcome]
  def devhub
  end
end
