require "./spec_helper"

describe "Payment" do
  it "Calculates PMT" do
    pmt_0 = Finance.pmt(9.3, 36, -12995.0, 6000.0, 0)
    pmt_0.should eq(269.9170849608034)

    pmt_1 = Finance.pmt(9.3, 36, -12995.0, 6000.0, 1)
    pmt_1.should eq(267.84131477132564)
  end
end

describe "Present Value" do
  it "Calculates PV" do
    pv_0 = Finance.pv(120.00, 1, 100.00, 100.00, 0)
    pv_0.should eq(-181.8181818181819)

    pv_1 = Finance.pv(120.00, 1, 100.00, 100.00, 1)
    pv_1.should eq(-190.909090909091)
  end
end

describe "NPER" do
  it "Calculates NPER" do
    nper_0 = Finance.nper(10, 2625.73, -81374.62, 0, 0)
    nper_0.should eq(36.0000015398228)

    nper_1 = Finance.nper(0, 2625.73, -81374.62, 0, 1)
    nper_1.should eq(30.99123672273996)
  end  
end

describe "FV" do
  it "Calculates FV" do
    fv_0 = Finance.fv(5.8, 48, 2265.63, -133781.21, 0)
    fv_0.should eq(46550.000266654475)

    fv_1 = Finance.fv(5.8, 48, 2265.63, -133781.21, 1)
    fv_1.should eq(45959.99594010557)

    fv_2 = Finance.fv(10, 36, 2625.73, -81374.62, 0)
    fv_2.should eq(0.004026405586046167)    
  end  
end

describe "Rate" do
  it "Calculates Rate" do
    rate_0 = Finance.rate(60, 1600, -75304.59, 0)
    rate_0.should eq(10.000000481349812)

    rate_1 = Finance.rate(30, 4337.33, -112072.94, 0)
    rate_1.should eq(11.900002031296209) 
  end  
end