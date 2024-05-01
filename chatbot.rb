class Chatbot
  attr_accessor :message

  def initialize
    @message = nil
  end

  def call
    "I'm not sure, what you mean by #{message}?"
  end

  def call(message)
    @message = message
  end

  def [](message)
    call(message)
  end
end
