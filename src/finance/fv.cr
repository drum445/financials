module Finance
  def self.fv(rate : Float64, nper : Int32, pmt : Float64, pv : Float64, loan_type = 0)
    if rate == 0.00
      return -1 * (pv + pmt * nper)
    end

    rate_per_annum = (rate / 100) / 12
    pow = (1 + rate_per_annum) ** nper
    fv = (pmt * (1 + rate_per_annum * loan_type) * (1 - pow) / rate_per_annum) - pv * pow
    return fv
  end
end
