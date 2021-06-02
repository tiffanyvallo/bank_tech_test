# frozen_string_literal: true

require 'date'

class Transaction
  attr_reader :current_balance, :credit, :debit, :date

  def initialize(current_balance = 0, credit = 0, debit = 0, date = Date.today)
    @current_balance = current_balance
    @credit = credit
    @debit = debit
    @date = date
  end
end
