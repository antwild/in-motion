require 'test_helper'

class EnquiryMailerTest < ActionMailer::TestCase
  test "send_precon" do
    mail = EnquiryMailer.send_precon
    assert_equal "Send precon", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
