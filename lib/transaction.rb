# frozen_string_literal: true

require 'date'

class Transaction
  attr_reader :current_balance, :credit, :debit, :date

  def initialize(date = Date.today, credit = 0, debit = 0, current_balance = 0)
    @date = date
    @credit = credit
    @debit = debit
    @current_balance = current_balance
  end
end
