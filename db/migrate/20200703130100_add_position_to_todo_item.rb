class AddPositionToTodoItem < ActiveRecord::Migration[5.1]
  def change
    add_column :children, :position, :integer
  end
end
