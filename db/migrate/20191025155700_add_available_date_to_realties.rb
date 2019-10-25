class AddAvailableDateToRealties < ActiveRecord::Migration[6.0]
  def change
    add_column :realties, :available_date, :datetime
  end
end
