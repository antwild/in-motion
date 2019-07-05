require 'test_helper'

class PreconsultationMailerTest < ActionMailer::TestCase
  test "pre_confirm" do
    mail = PreconsultationMailer.pre_confirm
    assert_equal "Pre confirm", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "new_precon" do
    mail = PreconsultationMailer.new_precon
    assert_equal "New precon", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
