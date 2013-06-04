class PagesController < ApplicationController
  before_filter :authenticate_user!, :except => :landing

  def home
    @user = current_user
    @user_routines = @user.user_routines
    unless @user_routines.empty?
      @routine = @user_routines.first.routine
      @exercise_routines = @routine.exercise_routines
    end
  end

  def exercises
    @exercises = Exercise.all
    @routines = current_user.routines
  end

  def workouts
    @workouts = Routine.where(:featured => true)
    @user_workouts = current_user.routines
  end

end
