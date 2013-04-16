class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :fname
      t.string :sname
      t.string :lname
      t.string :position
      t.string :rank
      t.string :email
      t.text :description

      t.timestamps
    end
  end
end
