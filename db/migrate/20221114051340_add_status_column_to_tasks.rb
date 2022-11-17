class AddStatusColumnToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :status, :integer, default: 0
  end
end
