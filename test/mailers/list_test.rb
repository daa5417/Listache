require 'test_helper'

class ListTest < ActionMailer::TestCase
  test "email_list" do
    mail = List.email_list
    assert_equal "Email list", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
