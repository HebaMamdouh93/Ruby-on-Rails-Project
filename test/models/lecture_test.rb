require 'test_helper'

class LectureTest < ActiveSupport::TestCase
  test "should not save lecture without content" do
    lecture = Lecture.new
    assert_not lecture.save
   end
end
