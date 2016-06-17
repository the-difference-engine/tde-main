class Project < ActiveRecord::Base
  has_attached_file :portfolio_image, styles: { medium: "391x453>", large: "500x579>"}
  validates_attachment_content_type :portfolio_image, content_type: /\Aimage\/.*\Z/
end
