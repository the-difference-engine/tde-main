class AddAttachmentDeveloperpicToDevelopers < ActiveRecord::Migration
  def self.up
    change_table :developers do |t|
      t.attachment :developerpic
    end
  end

  def self.down
    remove_attachment :developers, :developerpic
  end
end
