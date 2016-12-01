class Developer < ActiveRecord::Base
	validates :title, :first_name, :last_name, presence: true
	has_attached_file :developerpic, styles: { medium: "667x500>"}
  	validates_attachment_content_type :developerpic, content_type: /\Aimage\/.*\z/
end
