class AddAttachmentPortfolioImageToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :portfolio_image
    end
  end

  def self.down
    remove_attachment :projects, :portfolio_image
  end
end
