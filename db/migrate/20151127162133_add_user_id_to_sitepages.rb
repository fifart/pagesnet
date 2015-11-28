class AddUserIdToSitepages < ActiveRecord::Migration
  def change
    add_column :sitepages, :user_id, :integer
  end
end
