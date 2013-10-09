class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.string :name
      t.text :description
      t.references :college, index: true
      t.references :teacher, index: true
      t.references :core, index: true
      t.references :course, index: true

      t.timestamps
    end
  end
end
