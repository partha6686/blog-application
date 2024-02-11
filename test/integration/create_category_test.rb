require "test_helper"

class CreateCategoryTest < ActionDispatch::IntegrationTest
  test "creating category test" do
    get "/categories/new"
    assert_response :success
    assert_difference("Category.count", 1) do
      post categories_url, params: { category: {name: "Sports"  } }
      assert_response :redirect
    end
    follow_redirect!
    assert_response :success
    assert_match "Sports", response.body
  end

  test "creating category with validation test" do
    get "/categories/new"
    assert_response :success
    assert_no_difference("Category.count") do
      post categories_url, params: { category: {name: ""  } }
     
    end
    assert_select 'ul'
  end
end
