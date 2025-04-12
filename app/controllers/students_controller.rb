class StudentsController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin, only: [:new, :create, :edit, :update, :destroy]

  def index
    @students = Student.all
  end      

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      logger.info "User #{current_user.email} created student with ID #{@student.id}."
      redirect_to students_path, notice: 'Student created successfully.'
    else
      logger.warn "Could not add student. User: #{current_user.email}, Errors: #{@student.errors.full_messages.join(', ')}"
      render :new
    end
  end

  def edit
    @student = Student.find(params[:id])
  end    

  def show
    @student = Student.find(params[:id])
  end    

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      logger.info "User #{current_user.email} updated student with ID #{@student.id}."
      redirect_to students_path, notice: 'Student updated successfully.'
    else
      logger.error "Could not edit student with ID #{@student.id}."
      render :edit
    end
  end

  def destroy
    @student = Student.find(params[:id])
    if @student.destroy
      logger.info "User #{current_user.email} deleted student with ID #{@student.id}."
      redirect_to students_path, notice: 'Student deleted successfully.'
    else
      logger.error "Could not delete student with ID #{@student.id}."
      redirect_to students_path, alert: 'Failed to delete student.'
    end
  end

  private

  def student_params
    params.require(:student).permit(:name, :email, :student_number, :course)
  end

  def check_admin
    redirect_to students_path, alert: "You are not authorized to perform this action." unless current_user.role == "admin"
  end
end
