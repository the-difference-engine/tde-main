class CreateJoinTableLeadNeed < ActiveRecord::Migration
  def change
    create_join_table :leads, :needs do |t|
      # t.index [:lead_id, :need_id]
      # t.index [:need_id, :lead_id]
    end
  end
end
