# frozen_string_literal: true
require_relative'transaction'

class Account
  attr_reader :balance, :history

  def initialize(transaction = Transaction)
    @balance = 0
    @history = []
    @transaction = transaction
  end

  def deposit(amount)
    raise 'Unable to deposit: Amount entered is less than £0' if amount.negative?
    @balance += amount
    save_transaction(transaction_credit(amount))
   
  end

  def withdraw(amount)
    raise 'Unable to withdraw: Insufficient Funds' if amount > @balance
    raise 'Unable to withdraw: Amount entered is less than £0' if amount.negative?
    @balance -= amount
    save_transaction(transaction_debit(amount))
    
  end

  private
  def save_transaction(transaction)
    @history << transaction
  end

  def transaction_credit(amount)
    @transaction.new(Date.today, amount, 0, @balance)
  end

  def transaction_debit(amount)
    @transaction.new(Date.today, 0, amount, @balance)
  end


end
