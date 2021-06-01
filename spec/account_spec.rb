# frozen_string_literal: true

require 'account'
describe Account do
  it { is_expected.to be_an_instance_of Account }

  context 'starting an account' do
    it 'can show a balance' do
      expect(subject).to respond_to(:balance)
    end
    it 'can show a starting balance of £0.00' do
      expect(subject.balance).to eq(0)
    end
  end

  context 'deposit' do
    it { expect(subject).to respond_to(:deposit).with(1).argument }
  end
end
