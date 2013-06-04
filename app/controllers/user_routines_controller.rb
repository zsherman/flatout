class UserRoutinesController < ApplicationController

  def create
    @user_routine = UserRoutine.new(:routine_id => params[:routine_id], :user_id => current_user.id)
    if @user_routine.save
      respond_to do |format|
        format.html { redirect_to '/' }
        format.js
      end
    end
  end

end
