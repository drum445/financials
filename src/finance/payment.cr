module Finance
  def self.payment(rate : Float64, term : Int32, advance : Float64, future_value : Float64, loan_type = 0)
    # Excel PMT function: =PMT((9.3/100)/12,36,-12995,6000,0)
    # advance is also called present value
    payment = 0.00
    advance_minus_fv = advance - future_value

    if rate == 0.00
      payment = (advance_minus_fv / term).round(2)
    else
      rate_per_annum = (rate / 100) / 12
      rate_to_term = (rate_per_annum + 1) ** term
      payment = (advance_minus_fv * (rate_per_annum * rate_to_term)) / (rate_to_term - 1)

      fv_rate = future_value * rate_per_annum
      payment = (payment + fv_rate)

      # loan type is when the payment is being paid
      # 0 == end of month (default), 1 == start of month
      # so one less months worth of rate is being paid if 1
      if loan_type == 1
        payment = payment / (1 + rate_per_annum)
      end
    end

    return payment.round(2)
  end
end
