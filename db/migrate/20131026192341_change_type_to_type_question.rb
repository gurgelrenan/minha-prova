class ChangeTypeToTypeQuestion < ActiveRecord::Migration
  def change
  	change_table :questions do |t|
		t.rename :type, :type_question
	end
  end
end
