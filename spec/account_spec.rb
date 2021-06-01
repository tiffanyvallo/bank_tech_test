require 'account'

describe Account do
  
it { is_expected.to be_an_instance_of Account}

context "starting an account" do
  it "can show a balance" do
    expect(subject).to respond_to(:balance)
  end
  it "can show a starting balance of £0.00" do
  expect(subject.balance).to eq("£0.00")
  end
end

end