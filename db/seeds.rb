# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(email: "gurgel.renan@example.com", password: "123123123", password_confirmation: "123123123")

uece = College.create(name: "UECE", city: "Fortaleza", state: "Ceará")
ufc = College.create(name: "UFC", city: "Fortaleza", state: "Ceará")

cc_uece = Course.create(name: "Ciência da Computação", college_id: uece.id)
cc_ufc = Course.create(name: "Ciência da Computação", college_id: ufc.id)

core_uece = Core.create(name: "CCT", course_id: cc_uece.id)
Core.create(name: "CCT", course_id: cc_ufc.id)

paulo = Teacher.create(name: "Paulo", user_id: user.id, core_id: core_uece.id, course_id: cc_uece.id)

icc = Discipline.create(name: "Iniciaçao da Ciência da Computação", description: "Uma descricão da disciplina de Ordenação", college_id: uece.id,
					teacher_id: paulo.id, core_id: core_uece.id, course_id: cc_uece.id)

Question.create(description: "Quem foi a primeira programadora?", discipline_id: icc.id, user_id: user.id)



