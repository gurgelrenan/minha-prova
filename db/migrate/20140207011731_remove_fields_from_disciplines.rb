class RemoveFieldsFromDisciplines < ActiveRecord::Migration
  def change
    remove_column :disciplines, :college_id, :integer
    remove_column :disciplines, :teacher_id, :integer
  end
end
