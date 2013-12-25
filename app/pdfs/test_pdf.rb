class TestPdf< Prawn::Document

  def initialize(test)
    super()
    @test = test

    text "Prova Id\##{@test.id}", align: :center, size: 18, style: :bold
    text "#{@test.name}", align: :center, size: 20, style: :bold
    move_down 10
    text "Disciplina: #{@test.discipline.name}", size:14, style: :bold
    move_down 10
    text "Professor: #{@test.teacher.name}", size:14

    move_down 20

    @test.discipline.questions.limit(5).each_with_index do |question, index|
      question_type = question.question_type.name
      if question_type == "Subjetiva"
        text "#{index+1}. #{question.description}", size:14, align: :justify
        #TODO check if has really 1 option correct
        text "Resposta: ", style: :bold
        text question.options.correct.first.to_s
        move_down 20  
      else
        print_objective_answers(question, index)
      end
    end

  end

  def print_objective_answers(question, index)
    text "#{index+1}. #{question.description}", size:14, align: :justify
    move_down 5
    question.options.each do |option|
      text "* #{option.to_s}"
    end
  end

end