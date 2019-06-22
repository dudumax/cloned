class CreateTweeta < ActiveRecord::Migration[5.1]
  def change
    create_table :tweeta do |t|
      t.text :tweta

      t.timestamps
    end
  end
end
