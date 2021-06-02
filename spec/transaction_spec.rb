# frozen_string_literal: true

require 'transaction'
require 'date'

describe Transaction do
  context 'account creation' do
    it 'has a default balance of £0' do
      expect(subject.current_balance).to eq(0)
    end
    it 'has a default credit of £0' do
      expect(subject.credit).to eq(0)
    end
    it 'has a default deposit of £0' do
      expect(subject.debit).to eq(0)
    end
    it 'has a date' do
      expect(subject.date).to eq(Date.today)
    end
  end
end
