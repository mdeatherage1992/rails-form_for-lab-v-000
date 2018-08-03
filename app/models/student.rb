class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end
  def index
  @students = Student.all
  end

def show
  @student = Student.find(params[:id])
end

def new
  @student = Student.new
end

def create
  @student = Student.new
  @Student.first_name = params[:first_name]
  @student.last_name = params[:last_name]
  @student.save
  redirect_to student_path(@student)
end

def edit
  @student = Student.find(params[:id])
end

def update
  @student = Student.find(params[:id])
  @Student.update(params.require(:student))
  redirect_to student_path(@student)
end
end
