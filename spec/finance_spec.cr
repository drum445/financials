require "./spec_helper"

describe "Payment" do
  it "Calculates Payment" do
    payment_0 = Finance.payment(12995.0, 6000.0, 9.3, 36, 0)
    payment_0.should eq(269.92)

    payment_1 = Finance.payment(12995.0, 6000.0, 9.3, 36, 1)
    payment_1.should eq(267.84)
  end

  it "Calculates PV" do
    pv_0 = Finance.pv(120.00, 1, 100.00, 100.00, 0)
    pv_0.should eq(181.82)

    pv_1 = Finance.pv(120.00, 1, 100.00, 100.00, 1)
    pv_1.should eq(190.91)
  end
end
