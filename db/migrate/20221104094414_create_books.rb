# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string  :name
      t.text    :content
      t.references :course

      t.timestamps
    end
  end
end
