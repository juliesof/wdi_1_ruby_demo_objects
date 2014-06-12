require_relative 'person'


class InsuredPerson < Person

  attr_reader :years_to_live
  attr_accessor :current_smoker, :married

  def initialize(first_name, last_name, dob_str)
    @current_smoker = false
    @married = false
  end

  def current_smoker?
    @current_smoker = true
  end

  def married?
    @married
  end

  def give_insurance?
    ytl = 100
    if current_smoker?
      (ytl - 7)
    end
    if married?
      (ytl + 5)
    end
    ytl > 20 #evals to true or false)
  end

  def years_tp_live
    (80-age) + (current_smoker? ? -7 : 0) + (married? ? +5 : 0)
  end

end #ends class
