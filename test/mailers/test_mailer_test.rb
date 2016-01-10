require 'test_helper'

class TestMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'queue size should be empty' do
    # puts 'mailer'
    assert_emails 0
  end
end
