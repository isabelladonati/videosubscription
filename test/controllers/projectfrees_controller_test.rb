require 'test_helper'

class ProjectfreesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projectfree = projectfrees(:one)
  end

  test "should get index" do
    get projectfrees_url
    assert_response :success
  end

  test "should get new" do
    get new_projectfree_url
    assert_response :success
  end

  test "should create projectfree" do
    assert_difference('Projectfree.count') do
      post projectfrees_url, params: { projectfree: { description: @projectfree.description, github_link: @projectfree.github_link, name: @projectfree.name, web_link: @projectfree.web_link } }
    end

    assert_redirected_to projectfree_url(Projectfree.last)
  end

  test "should show projectfree" do
    get projectfree_url(@projectfree)
    assert_response :success
  end

  test "should get edit" do
    get edit_projectfree_url(@projectfree)
    assert_response :success
  end

  test "should update projectfree" do
    patch projectfree_url(@projectfree), params: { projectfree: { description: @projectfree.description, github_link: @projectfree.github_link, name: @projectfree.name, web_link: @projectfree.web_link } }
    assert_redirected_to projectfree_url(@projectfree)
  end

  test "should destroy projectfree" do
    assert_difference('Projectfree.count', -1) do
      delete projectfree_url(@projectfree)
    end

    assert_redirected_to projectfrees_url
  end
end
