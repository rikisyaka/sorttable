class CreateChildren < ActiveRecord::Migration[5.1]
  def change
    create_table :children do |t|
      t.string      :name, null: false, limit: 255
      t.text        :memo, limit: 1000
      t.references  :parent, null: false, foreign_key: true

      t.timestamps
    end
  end
end





