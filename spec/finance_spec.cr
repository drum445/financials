require "./spec_helper"

describe "Payment" do
  it "Calculates PMT" do
    payment_0 = Finance.payment(9.3, 36, 12995.0, 6000.0, 0)
    payment_0.should eq(269.92)

    payment_1 = Finance.payment(9.3, 36, 12995.0, 6000.0, 1)
    payment_1.should eq(267.84)
  end
end

describe "Present Value" do
  it "Calculates PV" do
    pv_0 = Finance.pv(120.00, 1, 100.00, 100.00, 0)
    pv_0.should eq(181.82)

    pv_1 = Finance.pv(120.00, 1, 100.00, 100.00, 1)
    pv_1.should eq(190.91)
  end
end
