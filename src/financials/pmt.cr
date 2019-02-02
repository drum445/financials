module Financials
  def self.pmt(rate : Float64, nper : Int32, pv : Float64, fv : Float64, loan_type = 0)
    # Excel PMT function: =PMT((9.3/100)/12,36,-12995,6000,0)
    # pv is also called present value
    pmt = 0.00
    pv = pv * -1
    pv_minus_fv = pv - fv

    if rate == 0.00
      pmt = (pv_minus_fv / nper)
    else
      rate_to_nper = (rate + 1) ** nper
      pmt = (pv_minus_fv * (rate * rate_to_nper)) / (rate_to_nper - 1)

      fv_rate = fv * rate
      pmt = (pmt + fv_rate)

      # loan type is when the payment is being paid
      # 0 == end of month (default), 1 == start of month
      # so one less months worth of rate is being paid if 1
      if loan_type == 1
        pmt = pmt / (1 + rate)
      end
    end

    return pmt.round(6)
  end
end
