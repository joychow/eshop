class AddPartnerToProduct < ActiveRecord::Migration
  def change
    add_column :products, :partner_id, :integer
    add_index :products, :partner_id
  end
end
