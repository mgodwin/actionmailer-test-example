require 'test_helper'

class TestControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'sending an email' do
    # puts 'controller'
    TestMailer.test_email.deliver_now
  end
end
