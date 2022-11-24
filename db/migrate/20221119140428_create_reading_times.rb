# frozen_string_literal: true

class CreateReadingTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :reading_times do |t|
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.decimal :total_time

      t.timestamps
    end
  end
end
