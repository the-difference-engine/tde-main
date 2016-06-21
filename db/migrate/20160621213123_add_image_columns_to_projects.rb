class AddImageColumnsToProjects < ActiveRecord::Migration
  def up
    add_attachment :projects, :image_one
    add_attachment :projects, :image_two
    add_attachment :projects, :image_three
  end

  def down
    remove_attachment :projects, :image_one
    remove_attachment :projects, :image_two
    remove_attachment :projects, :image_three
  end
end
