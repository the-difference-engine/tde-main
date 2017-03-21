class Project < ActiveRecord::Base
  has_attached_file :portfolio_image, styles: { medium: "391x453>", large: "500x579>"}
  validates_attachment_content_type :portfolio_image, content_type: /\Aimage\/.*\Z/
  has_attached_file :image_one, styles: { medium: "750x450>"}
  validates_attachment_content_type :image_one, content_type: /\Aimage\/.*\Z/
  has_attached_file :image_two, styles: { medium: "750x450>"}
  validates_attachment_content_type :image_two, content_type: /\Aimage\/.*\Z/
  has_attached_file :image_three, styles: { medium: "750x450>"}
  validates_attachment_content_type :image_three, content_type: /\Aimage\/.*\Z/
  validates :title, :description, :portfolio_image, :image_one, presence: true

  Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
  Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'
end
