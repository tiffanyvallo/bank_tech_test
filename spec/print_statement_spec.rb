require 'print_statement'

describe PrintStatment do
  it 'can print the statement header' do
    expect(subject.header).to eq("date       || credit       || debit       || balance\n")
  end
end
