class Transfer
  attr_accessor :sender, :receiver, :status
  
  def initialize(sender, receiver, balance)
    @sender = sender
    @receiver = receiver
    @status = "pending"
  end
  
end
