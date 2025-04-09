class StudentsController < ApplicationController
    before_action :authenticate_user!
    before_action :check_admin, only: [:new, :create, :edit, :update, :destroy]
  
    def index
<<<<<<< HEAD
      @students = Student.all
      @message = params[:message]
    end
    
=======
      @students = Student.where(name: params[:name])
    end    
>>>>>>> main
  
    def new
      @student = Student.new
    end
  
    def create
      @student = Student.new(student_params)
      if @student.save
        redirect_to students_path, notice: 'Student created successfully.'
      else
        render :new
      end
    end
  
    def edit
<<<<<<< HEAD
      @student = Student.find_by_sql("SELECT * FROM students WHERE id = '#{params[:id]}'").first
    end
    
    def show
      @student = Student.find_by_sql("SELECT * FROM students WHERE id = #{params[:id]}").first
    end     
=======
      @student = Student.find(params[:id])
    end    
    
    def show
      @student = Student.find(params[:id])
    end    
    
>>>>>>> main
  
    def update
      @student = Student.find(params[:id])
      if @student.update(student_params)
        redirect_to students_path, notice: 'Student updated successfully.'
      else
        render :edit
      end
    end
  
    def destroy
      @student = Student.find(params[:id])
      @student.destroy
      redirect_to students_path, notice: 'Student deleted successfully.'
    end
  
    private
  
    def student_params
      params.require(:student).permit(:name, :email, :student_number, :course)
    end
    
  
    def check_admin
      redirect_to students_path, alert: "You are not authorized to perform this action." unless current_user.role == "admin"
    end
  end
  