class AddReadTimeToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books , :read_time,  :integer
  end
end
