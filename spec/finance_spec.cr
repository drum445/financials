require "./spec_helper"

describe Finance do
  it "Calculates Payment" do
    payment = Finance.payment(12995.0, 6000.0, 9.3, 36, 0)
    payment.should eq(269.92)
  end
end
