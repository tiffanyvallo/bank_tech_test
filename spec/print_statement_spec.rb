# frozen_string_literal: true

require 'print_statement'

describe PrintStatement do
  it 'can print the statement header' do
    expect(subject.header).to eq("date  || credit  || debit  || balance\n")
  end
end