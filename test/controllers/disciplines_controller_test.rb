require 'test_helper'

class DisciplinesControllerTest < ActionController::TestCase
  setup do
    @discipline = disciplines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:disciplines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discipline" do
    assert_difference('Discipline.count') do
      post :create, discipline: { college_id: @discipline.college_id, core_id: @discipline.core_id, course_id: @discipline.course_id, description: @discipline.description, name: @discipline.name, teacher_id: @discipline.teacher_id }
    end

    assert_redirected_to discipline_path(assigns(:discipline))
  end

  test "should show discipline" do
    get :show, id: @discipline
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @discipline
    assert_response :success
  end

  test "should update discipline" do
    patch :update, id: @discipline, discipline: { college_id: @discipline.college_id, core_id: @discipline.core_id, course_id: @discipline.course_id, description: @discipline.description, name: @discipline.name, teacher_id: @discipline.teacher_id }
    assert_redirected_to discipline_path(assigns(:discipline))
  end

  test "should destroy discipline" do
    assert_difference('Discipline.count', -1) do
      delete :destroy, id: @discipline
    end

    assert_redirected_to disciplines_path
  end
end
