class AddColumnStudentBio < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :bio, :text, :default => "User bio"
  end
end
