class CreateJoinTableDisciplineQuestion < ActiveRecord::Migration
  def change
    create_join_table :disciplines, :questions do |t|
      # t.index [:discipline_id, :question_id]
      # t.index [:question_id, :discipline_id]
    end
  end
end
