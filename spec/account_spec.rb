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
    it 'can show a balance when money is deposited and withdrawn' do
      subject.deposit(10_000)
      subject.withdraw(800)
      subject.deposit(700)
      subject.withdraw(840)
      subject.withdraw(2107)
      expect(subject.balance).to eq(6953)
    end
  end

  context 'deposit' do
    it { expect(subject).to respond_to(:deposit).with(1).argument }
    it 'allows a deposit of £1000 to be made' do
      subject.deposit(1000)
      expect(subject.balance).to eq(1000)
    end
    it 'can notify client if deposit is less than £0' do
      expect { subject.deposit(-500) }.to raise_error('Unable to deposit: Amount entered is less than £0')
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
    it 'can notify client if withdrawal is more than balance' do
      expect { subject.withdraw(2000) }.to raise_error('Unable to withdraw: Insufficient Funds')
    end
    it 'can notify client if withdrawal is less than £0' do
      expect { subject.withdraw(-500) }.to raise_error('Unable to withdraw: Amount entered is less than £0')
    end
  end

  context 'transactions' do
    it 'starts with no transactions' do
      expect(subject.history).to be_empty
    end
  end
  context 'view statement' do
    let(:statement) { double :statement }
    it 'can print the statement of transactions' do
      allow(statement).to receive(:print)
      subject.view_statement
    end
  end
end
