class AddLastVisitToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :last_visit, :datetime
  end
end
