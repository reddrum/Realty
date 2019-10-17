class AddDetailsToRealties < ActiveRecord::Migration[6.0]
  def change
    add_column :realties, :details, :text
  end
end
