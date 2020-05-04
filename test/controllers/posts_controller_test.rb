require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  200.times do |index|
    test "dummy test #{index}" do
      get posts_url
      assert_response :success
      sleep 1
    end
  end
end
