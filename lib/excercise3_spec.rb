require 'excercise3'

describe EmailClient do
  let(:message_double) { double(:Message) }
  it "can send messages" do
    email_client = EmailClient.new
    expect(email_client.message).to receive(message_double)
  end
end
