require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_task_url
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post tasks_url, params: { task: { answer: @task.answer, answer_comment: @task.answer_comment, clue1: @task.clue1, clue2: @task.clue2, clue3: @task.clue3, clue_time: @task.clue_time, name: @task.name, skip_comment: @task.skip_comment, task: @task.task } }
    end

    assert_redirected_to task_url(Task.last)
  end

  test "should show task" do
    get task_url(@task)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_url(@task)
    assert_response :success
  end

  test "should update task" do
    patch task_url(@task), params: { task: { answer: @task.answer, answer_comment: @task.answer_comment, clue1: @task.clue1, clue2: @task.clue2, clue3: @task.clue3, clue_time: @task.clue_time, name: @task.name, skip_comment: @task.skip_comment, task: @task.task } }
    assert_redirected_to task_url(@task)
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete task_url(@task)
    end

    assert_redirected_to tasks_url
  end
end