class RemoveTeacherIdFromSubjects < ActiveRecord::Migration
  def up
    remove_column :subjects, :teacher_id
  end

  def down
    add_column :subjects, :teacher_id, :integer
  end
end
