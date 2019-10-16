class AddParkingSpacesToRealties < ActiveRecord::Migration[6.0]
  def change
    add_column :realties, :parking_spaces, :integer, default: 0
  end
end
