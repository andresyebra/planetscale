class AddTaskTable < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.belongs_to :user

      t.timestamps
    end
  end
end
