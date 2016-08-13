class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :company
      t.string :company_kind
      t.string :role
      t.string :website
      t.string :hear_about_tde

      t.timestamps null: false
    end
  end
end
