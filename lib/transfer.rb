class Transfer
  attr_accessor :sender, :receiver
  
  def initialize(sender, receiver, balance)
    @sender = sender
    @receiver = receiver
  end
  
end
