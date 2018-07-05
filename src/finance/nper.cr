module Finance
  def self.nper(rate : Float64, pmt : Float64, pv : Float64, fv : Float64, loan_type = 0)
      # Excel PMT function: =NPER(10/100/12,2625.73,-81374.62,0,0)
      if rate == 0.00
        return (- (pv + fv) / pmt).round(0).to_i32
      end

      rate_per_annum = (rate / 100) / 12
      num = pmt * (1 + rate_per_annum * loan_type) - fv * rate_per_annum
      den = (pv * rate_per_annum + pmt * (1 + rate_per_annum * loan_type))
      nper = Math.log10(num / den) / Math.log10(1 + rate_per_annum)
      return nper.round(0).to_i32
  end
end