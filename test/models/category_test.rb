require 'test_helper'

class CategoryTest < ActiveSupport::TestCase 

    def setup
        @category = Category.new(name: "Music")
    end

    test "Category should be Valid" do
        assert @category.valid?
    end
    test "Category name should be Present" do
        @category.name = ""
        assert_not @category.valid?
    end
    test "name should be unique" do
        @category.save
        @category2 = Category.new(name: "Music")
        assert_not @category2.valid?
    end
    test "name should not be too long" do
        @category.name = "_"*31
        assert_not @category.valid?
    end
    test "name should not be too short" do
        @category.name = "_"
        assert_not @category.valid?
    end

end