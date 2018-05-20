require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

   test "should not save course without title" do
    course = Course.new
    assert_not course.save
   end

   test "should not save course with title exist before" do
    course = Course.new(title: "php")
    course.save
    course2 = Course.new(title: "php")
    assert_not course2.save
  end
end
