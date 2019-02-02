module Financials
  def self.fv(rate : Float64, nper : Int32, pmt : Float64, pv : Float64, loan_type = 0)
    if rate == 0.00
      return -1 * (pv + pmt * nper)
    end

    pow = (1 + rate) ** nper
    fv = (pmt * (1 + rate * loan_type) * (1 - pow) / rate) - pv * pow
    return fv.round(6)
  end
end
