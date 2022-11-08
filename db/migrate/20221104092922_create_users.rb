class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :role, default: 0
      t.references :course

      t.timestamps
    end
  end
end