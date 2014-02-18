namespace :db do
  desc "Fill database with subjective questions"
  task populate: :environment do
    99.times do |n|
      description  = Faker::Lorem.sentence(10)
      user_id = User.first.id
      answer = Faker::Lorem::sentence(5)
      question = Question.create!(description: description,
                   user_id: user_id,
                   question_type: QuestionType.first
      )
      question.disciplines << Discipline.first
      question.options << Option.create!(question_id: question.id,
                            text: answer,
                            correct: true
                          )
      question.level_questions << LevelQuestion.create(value: rand(1..5),
                                    question_id: question.id,
                                    user_id: User.first.id
                                  )
    end
  end
end