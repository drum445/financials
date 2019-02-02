module Financials
  def self.nper(rate : Float64, pmt : Float64, pv : Float64, fv : Float64, loan_type = 0)
    # Excel PMT function: =NPER(10/100/12,2625.73,-81374.62,0,0)
    if rate == 0.00
      return (-(pv + fv) / pmt)
    end

    num = pmt * (1 + rate * loan_type) - fv * rate
    den = (pv * rate + pmt * (1 + rate * loan_type))
    nper = Math.log10(num / den) / Math.log10(1 + rate)
    return nper.round(6)
  end
end
