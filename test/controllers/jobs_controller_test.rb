require 'test_helper'

class JobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get jobs_url
    assert_response :success
    assert_equal(JSON.parse(response.body).length, 2)
  end

  test "should get new" do
    get new_job_url
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post(jobs_url, params: { company: @job.company, description: @job.description,
        salary: @job.salary, source_link: @job.source_link, suburb: @job.suburb,
        title: @job.title, work_type: @job.work_type },
        as: :json)
    end
    assert_response :success
    assert_equal(JSON.parse(response.body).length, 9)

    require 'take_screenshot'
  end

  test "should show job" do
    get job_url(@job)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_url(@job)
    assert_response :success
  end

  test "should update job" do
    patch job_url(@job), params: { job: { company: @job.company, description: @job.description, salary: @job.salary, source_link: @job.source_link, suburb: @job.suburb, title: @job.title, work_type: @job.work_type } }
    assert_redirected_to job_url(@job)
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete job_url(@job)
    end

    assert_redirected_to jobs_url
  end
end
