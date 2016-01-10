class TestMailer < ApplicationMailer

  def test_email()
    mail(to: 'test@example.com') do |format|
      format.text { render plain: 'hi mom' }
    end
  end
end
