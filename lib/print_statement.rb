# frozen_string_literal: true

require_relative 'transaction'
require_relative 'account'

class PrintStatement
  def header
    "date  || credit  || debit  || balance\n"
  end
end
