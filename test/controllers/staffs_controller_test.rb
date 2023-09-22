require "test_helper"

class StaffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @staff = staffs(:one)
  end

  test "should get index" do
    get staffs_url, as: :json
    assert_response :success
  end

  test "should create staff" do
    assert_difference("Staff.count") do
      post staffs_url, params: { staff: { joining_date: @staff.joining_date, name: @staff.name, reporting_to: @staff.reporting_to, tech_stack: @staff.tech_stack } }, as: :json
    end

    assert_response :created
  end

  test "should show staff" do
    get staff_url(@staff), as: :json
    assert_response :success
  end

  test "should update staff" do
    patch staff_url(@staff), params: { staff: { joining_date: @staff.joining_date, name: @staff.name, reporting_to: @staff.reporting_to, tech_stack: @staff.tech_stack } }, as: :json
    assert_response :success
  end

  test "should destroy staff" do
    assert_difference("Staff.count", -1) do
      delete staff_url(@staff), as: :json
    end

    assert_response :no_content
  end
end
