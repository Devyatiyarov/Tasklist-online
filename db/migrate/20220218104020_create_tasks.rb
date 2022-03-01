# frozen_string_literal: true

class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :text
      t.boolean :complete
      t.timestamps
    end

    add_index :tasks, :text
  end
end
