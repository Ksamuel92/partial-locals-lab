class ClassroomsController < ApplicationController
  def show
    @classroom = Classroom.find(params[:id])
    @student = @classroom.oldest_student
  end

  def index
    @classrooms = Classroom.all
    @search_students = Student.where("name LIKE ?", "%M%")
  end
end
