module Financials
  private def self.pv_f(rate : Float64, nper : Int32)
    return ((1 + rate) ** nper)
  end

  private def self.pv_annuity(rate : Float64, nper : Int32, pmt : Float64, fv : Float64, loan_type : Int32)
    return (fv + pmt*(1 + rate*loan_type)*(((1 + rate) ** nper) - 1)/rate)
  end

  def self.pv(rate : Float64, nper : Int32, pmt : Float64, fv : Float64 = 0, loan_type = 0)
    if rate == 0.00
      pv = -pmt * nper - fv
    else
      rate_per_anum = ((rate / 100) / 12)

      annuity = pv_annuity(rate_per_anum, nper, pmt, fv, loan_type)
      fv = pv_f(rate_per_anum, nper)
      pv = -1 * (annuity / fv)
    end

    return pv
  end
end

# PV*((1+ rate)^NPER)+ PMT*(1+rate*type)*(((1+ rate)^NPER)-1)/rate+FV = 0

# so rearranging to solve PV

#  PV = -1*(FV+ PMT*(1+rate*type)*(((1+ rate)^NPER)-1)/rate)/((1+ rate)^NPER)
