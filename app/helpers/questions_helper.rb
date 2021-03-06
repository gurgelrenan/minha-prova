# encoding: utf-8

module QuestionsHelper
  def set_question_rate_color(question_rate)
    question_rate = Float(question_rate)
    if(question_rate > 1.0 && question_rate <= 2.5)
      "success"
    elsif (question_rate > 2.5 && question_rate <= 4.0)
      "warning"
    else
      "danger"
    end
  end

  def user_evaluated_question?(question_id)
    LevelQuestion.where(user_id: current_user.id, question_id: question_id).count > 0
  end

  def get_user_avaliation_for_question(question_id)
    LevelQuestion.where(user_id: current_user.id, question_id: question_id).first.try(:value).to_f
  end

  def show_options_for_average_select
    [["Muito fácil", 1..2], ["Fácil", 2..3], ["Médio", 3..4], ["Dificil", 4..5], ["Muito dificil", 5..6]]
  end
end
