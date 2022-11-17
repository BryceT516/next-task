class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :note
      t.date :due_by_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
