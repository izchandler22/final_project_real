require 'twilio-ruby'
require './worldcup'

class Text

  def texting(recipient, body)
    account_sid = 'ACe330ba04d082392df4cb3511dcb72cec'
    auth_token = '2008ea097713e401a16c54029058da82'
    @client = Twilio::REST::Client.new(account_sid, auth_token)
    @recipient = recipient
    @body = body
    @client.account.messages.create(
      :from => '+18152642023',
      :to => @recipient,
      :body => @body
      )

  end

  # def recipient 
  #   @recipient = recipient
  # end

end

# text_for_izzy = Text.new
# text_for_izzy.texting(+19176030345)
# text_for_emma = Text.new
# text_for_emma.texting(+19176289337, "Hellooooooooooo!")

