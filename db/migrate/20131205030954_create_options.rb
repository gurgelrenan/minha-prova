class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.references :question, index: true
      t.integer :weight, default: 0
      t.string :text
      t.boolean :correct

      t.timestamps
    end
  end
end
