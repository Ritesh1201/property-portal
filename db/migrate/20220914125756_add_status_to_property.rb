class AddStatusToProperty < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :status, :boolean, default: false
  end
end
