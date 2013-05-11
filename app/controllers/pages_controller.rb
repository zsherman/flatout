class PagesController < ApplicationController
  before_filter :authenticate_user!, :except => :landing

  def home
  end

end
