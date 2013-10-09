class CreateCores < ActiveRecord::Migration
  def change
    create_table :cores do |t|
      t.string :name
      t.references :course, index: true

      t.timestamps
    end
  end
end
