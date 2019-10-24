class AddForSaleToRealties < ActiveRecord::Migration[6.0]
  def change
    add_column :realties, :for_sale, :boolean, default: true
    #Ex:- :default =>''
  end
end
