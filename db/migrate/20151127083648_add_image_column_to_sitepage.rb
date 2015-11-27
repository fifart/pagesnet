class AddImageColumnToSitepage < ActiveRecord::Migration
  def up
    add_attachment :sitepages, :image
  end

  def down
    remove_attachment :sitepages, :image
  end
end
