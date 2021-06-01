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
    it 'allows a deposit of £1000 to be made' do
      subject.deposit(1000)
      expect(subject.balance).to eq(1000)
    end
  end

  context 'withdraw' do
    before do 
      subject.deposit(1000)
    end
    it { expect(subject).to respond_to(:withdraw).with(1).argument }
    it 'allows a withdrawal of £500 to be made' do
      subject.withdraw(500)
      expect(subject.balance).to eq(500)
    end
    it "can notify client if withdrawal is more than balance" do
      expect { subject.withdraw(2000) }.to raise_error("Insufficient Funds: Unable to withdraw")
    end
  end
end
