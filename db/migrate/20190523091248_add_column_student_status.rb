class AddColumnStudentStatus < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :status, :string, :default => 'student'
  end
end
