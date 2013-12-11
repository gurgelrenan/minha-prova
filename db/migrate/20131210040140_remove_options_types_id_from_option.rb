class RemoveOptionsTypesIdFromOption < ActiveRecord::Migration
  def change
    remove_column :options, :options_type_id
  end
end
