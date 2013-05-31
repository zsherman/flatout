class ExercisesController < ApplicationController

  def index
    @exercises = Exercise.all
    @routines = current_user.routines
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(params[:exercise])
    if @exercise.save
      redirect_to '/exercises', notice: 'Exercise Created.'
    else
      render 'new'
    end
  end

  def edit
    @exercise = Exercise.find(params[:id])
  end

  def update
    @exercise = Exercise.find(params[:id])
    if @exercise.update_attributes(params[:exercise])
      redirect_to '/exercises', notice: 'Exercise Updated.'
    else
      render 'edit'
    end
  end

  def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.destroy
    redirect_to '/exercises', notice: "Exercise Destroyed."
  end

end
