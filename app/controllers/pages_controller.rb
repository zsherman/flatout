class PagesController < ApplicationController
  before_filter :authenticate_user!, :except => :landing

  def home
    @user = current_user
    @routines = @user.routines
    unless @routines.empty?
      @routine = @routines.first
      @exercises = @routine.exercises
    end
  end

  def exercises
    @exercises = Exercise.all
    @routines = current_user.routines
  end

end
