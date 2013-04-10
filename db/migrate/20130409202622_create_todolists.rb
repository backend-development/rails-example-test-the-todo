class CreateTodolists < ActiveRecord::Migration
  def change
    create_table :todolists do |t|
      t.string :title

      t.timestamps
    end

    add_column :todoitems, :todolist_id, :integer
  end
end
