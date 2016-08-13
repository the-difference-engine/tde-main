class Lead < ActiveRecord::Base
  has_and_belongs_to_many :needs
  validates :name, :email, :phone, :company, :company_kind, :role, :website,
  :hear_about_tde, :need_ids, presence: true
end
