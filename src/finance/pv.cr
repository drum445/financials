module Finance
  private def self.pv_f(rate : Float64, term : Int32)
    return ((1 + rate) ** term)
  end

  private def self.pv_annuity(rate : Float64, term : Int32, payment : Float64, future_value : Float64, loan_type : Int32)
    return (future_value + payment*(1 + rate*loan_type)*(((1 + rate) ** term) - 1)/rate)
  end

  def self.pv(rate : Float64, term : Int32, payment : Float64, future_value : Float64 = 0, loan_type = 0)
    rate_per_anum = ((rate / 100) / 12)

    annuity = pv_annuity(rate_per_anum, term, payment, future_value, loan_type)
    fv = pv_f(rate_per_anum, term)
    pv = annuity / fv

    return pv.round(2)
  end
end

# PV*((1+ rate)^NPER)+ PMT*(1+rate*type)*(((1+ rate)^NPER)-1)/rate+FV = 0

# so rearranging to solve PV

#  PV = -1*(FV+ PMT*(1+rate*type)*(((1+ rate)^NPER)-1)/rate)/((1+ rate)^NPER)
