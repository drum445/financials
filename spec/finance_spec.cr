require "./spec_helper"

describe "Payment" do
  it "Calculates PMT" do
    pmt_0 = Financials.pmt(9.3/100/12, 36, -12995.0, 6000.0, 0)
    pmt_0.should eq(269.917085)

    pmt_1 = Financials.pmt(9.3/100/12, 36, -12995.0, 6000.0, 1)
    pmt_1.should eq(267.841315)
  end
end

describe "Present Value" do
  it "Calculates PV" do
    pv_0 = Financials.pv(9.3/100/12, 36, 350.50, 1000, 0)
    pv_0.should eq(-11731.212657)

    pv_1 = Financials.pv(0, 36, 350.50, 1000, 0)
    pv_1.should eq(-13618.0)
  end
end

describe "NPER" do
  it "Calculates NPER" do
    nper_0 = Financials.nper(10.0/100/12, 2625.73, -81374.62, 0, 0)
    nper_0.should eq(36.000002)

    nper_1 = Financials.nper(0, 2625.73, -81374.62, 0, 1)
    nper_1.should eq(30.99123672273996)
  end
end

describe "FV" do
  it "Calculates FV" do
    fv_0 = Financials.fv(5.8/100/12, 48, 2265.63, -133781.21, 0)
    fv_0.should eq(46550.000267)

    fv_1 = Financials.fv(5.8/100/12, 48, 2265.63, -133781.21, 1)
    fv_1.should eq(45959.99594)

    fv_2 = Financials.fv(10.0/100/12, 36, 2625.73, -81374.62, 0)
    fv_2.should eq(0.004026)
  end
end

describe "Rate" do
  it "Calculates Rate" do
    rate_0 = Financials.rate(60, 1600, -75304.59, 0)
    rate_0.should eq(0.008333)

    rate_1 = Financials.rate(30, 4337.33, -112072.94, 0)
    rate_1.should eq(0.009917)
  end
end
