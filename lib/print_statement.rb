# frozen_string_literal: true

require_relative 'transaction'
require_relative 'account'

class PrintStatement
  def print(history)
    @history = history
    footer = @history.reverse.map do |transaction|
      "#{transaction.date.strftime("%d/%m/%Y")}||#{format_currency(transaction.credit)}||#{format_currency(transaction.debit)}||#{format_currency(transaction.current_balance)}"
    end
    puts "date||credit||debit||balance\n #{footer.join('\n')}"
  end

  def format_currency(amount)
    amount == 0 ? '' : format('%.2f', amount)
  end
end
