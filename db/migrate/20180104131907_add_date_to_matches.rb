class AddDateToMatches < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :date, :date
  end
end
