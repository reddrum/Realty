class AddStatusToRealties < ActiveRecord::Migration[6.0]
  def change
    add_column :realties, :status, :string, default: "available"
  end
end
