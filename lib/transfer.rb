class Transfer
  attr_accessor :sender, :receiver, :amount
  attr_reader :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  def valid?
    @sender.valid?
    @receiver.valid?
  end
  
  def execute_transaction
    if valid? && sender.balance >= @amount && @status = "pending"
      @status = "complete"
      @sender.balance -= @amount
      @receiver.balance += @amount
    else
      p "Transaction rejected. Please check your account balance."
      @status = "rejected"
    end
  end
  
  def reverse_transfer
    if @status = "complete"
      @sender.balance += @amount
      @receiver.balance -= @amount
    end
  end
  
end
