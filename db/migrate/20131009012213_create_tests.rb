class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :name
      t.string :questions
      t.references :teacher, index: true
      t.references :discipline, index: true

      t.timestamps
    end
  end
end
