# frozen_string_literal: true

class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise "Insufficient Funds: Unable to withdraw" if amount > @balance
    raise "Unable to withdraw: Amount entered is less than £0" if amount < 0
    @balance -= amount
  end
end
