# frozen_string_literal: true

class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    raise 'Unable to deposit: Amount entered is less than £0' if amount.negative?

    @balance += amount
  end

  def withdraw(amount)
    raise 'Unable to withdraw: Insufficient Funds' if amount > @balance
    raise 'Unable to withdraw: Amount entered is less than £0' if amount.negative?

    @balance -= amount
  end
end
