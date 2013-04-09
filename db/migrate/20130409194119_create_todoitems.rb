class CreateTodoitems < ActiveRecord::Migration
  def change
    create_table :todoitems do |t|
      t.string :text
      t.boolean :done, :default => false
      t.datetime :done_at, :default => nil

      t.timestamps
    end
  end
end
