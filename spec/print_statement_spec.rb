# frozen_string_literal: true

require 'print_statement'

describe PrintStatement do
  let(:debit) { [transaction2] }
  let(:credit) { [transaction1] }
  let(:transaction1) { double(:transaction1, date: Date.today, credit: 10000, debit: 0, current_balance: 10000) }
  let(:transaction2) { double(:transaction2, date: Date.today, credit: 0, debit: 5000, current_balance: 5000) }
  it 'can print out transactions' do
    expect { subject.print(debit) }.to output("date||credit||debit||balance\n #{Date.today.strftime("%d/%m/%Y")}||||5000.00||5000.00\n").to_stdout
  end
  it 'can print out debit transaction' do
    expect { subject.print(credit) }.to output("date||credit||debit||balance\n #{Date.today.strftime("%d/%m/%Y")}||10000.00||||10000.00\n").to_stdout
  end
end
