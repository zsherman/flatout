class PagesController < ApplicationController
  before_filter :authenticate_user!, :except => :landing

  def home
    @user = current_user
    @routines = @user.routines
    unless @routines.empty?
      @routine = @routines.first
      #@exercises = @routine.exercises
      @exercise_routines = @routine.exercise_routines
    end
  end

  def exercises
    @exercises = Exercise.all
    @routines = current_user.routines
  end

  def workouts
    @workouts = Routine.where(:featured => true)
  end

end
