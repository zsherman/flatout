class PagesController < ApplicationController
  before_filter :authenticate_user!, :except => :landing

  def home
    @user = current_user
    @routines = @user.routines
    @routine = @routines.first
    @exercises = @routine.exercises
  end

end
