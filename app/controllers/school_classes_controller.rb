class SchoolClassesController < ApplicationController
  def index
  @school_classes = SchoolClass.all
  end

def show
  @school_class = SchoolClass.find(params[:id])
end

def new
  @school_class = SchoolClass.new
end

def create
  @school_class = SchoolClass.new
  @school_class.title = params[:title]
  @school_class.last_name = params[:last_name]
  @school_class.save
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
