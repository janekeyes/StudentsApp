class AddStudentNumberAndCourseToStudents < ActiveRecord::Migration[8.0]
  def change
    add_column :students, :student_number, :string
    add_column :students, :course, :string
  end
end
