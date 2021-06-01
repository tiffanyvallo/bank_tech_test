require 'account'

describe Account do
  
it { is_expected.to be_an_instance_of Account}

context "starting an account" do
  it "can show a balance" do
    expect(subject).to respond_to(:balance)
  end
end

end