class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end
  
  def activate
    @student = Student.find(params[:id])
    
    if @student.active
      "This student is currently active."
    else
      "This student is currently inactive."
    end
    
    @student.active
    @student.save
  
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end