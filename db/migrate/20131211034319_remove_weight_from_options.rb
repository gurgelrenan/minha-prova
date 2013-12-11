class RemoveWeightFromOptions < ActiveRecord::Migration
  def change
    remove_column :options, :weight
  end
end
