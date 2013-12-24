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

    @test.discipline.questions.each_with_index do |question, index|
      text "#{index+1}. #{question.description}", size:14, align: :justify
      move_down 20
    end

  end

end