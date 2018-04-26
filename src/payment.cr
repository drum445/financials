require "./payment/*"

module Payment
  def self.calculate(advance : Float64, balloon : Float64, rate : Float64, term : Int32, loan_type = 0)
    # Excel PMT function: =PMT((9.3/100)/12,36,-12995,6000,0)
    payment = 0.00
    advance_minus_balloon = advance - balloon

    if rate == 0.00
      payment = (advance_minus_balloon / term).round(2)
    else
      rate_per_annum = (rate / 100) / 12
      rate_to_term = (rate_per_annum + 1) ** term
      payment = (advance_minus_balloon * (rate_per_annum * rate_to_term)) / (rate_to_term - 1)

      balloon_rate = balloon * rate_per_annum
      payment = (payment + balloon_rate).round(2)

      # loan type is when the payment is being paid
      # 0 == end of month (default), 1 == start of month
      # so one less months worth of rate is being paid if 1
      if loan_type == 1
        payment = payment / (1 + rate_per_annum)
      end
    end

    return payment
  end
end
