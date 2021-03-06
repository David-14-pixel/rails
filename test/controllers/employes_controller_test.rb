require "test_helper"

class EmployesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employe = employes(:one)
  end

  test "should get index" do
    get employes_url
    assert_response :success
  end

  test "should get new" do
    get new_employe_url
    assert_response :success
  end

  test "should create employe" do
    assert_difference('Employe.count') do
      post employes_url, params: { employe: { age: @employe.age, cargo: @employe.cargo, last_name: @employe.last_name, name: @employe.name, salary: @employe.salary, telephone: @employe.telephone } }
    end

    assert_redirected_to employe_url(Employe.last)
  end

  test "should show employe" do
    get employe_url(@employe)
    assert_response :success
  end

  test "should get edit" do
    get edit_employe_url(@employe)
    assert_response :success
  end

  test "should update employe" do
    patch employe_url(@employe), params: { employe: { age: @employe.age, cargo: @employe.cargo, last_name: @employe.last_name, name: @employe.name, salary: @employe.salary, telephone: @employe.telephone } }
    assert_redirected_to employe_url(@employe)
  end

  test "should destroy employe" do
    assert_difference('Employe.count', -1) do
      delete employe_url(@employe)
    end

    assert_redirected_to employes_url
  end
end
