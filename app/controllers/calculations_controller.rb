class CalculationsController < ApplicationController


  def sq
    @the_number = params[:number].to_i
    @answer= (@the_number) * (@the_number)
  end

  def sqrt
    @the_number = params[:number].to_i
    @answer = Math.sqrt(@the_number)
  end

  def pmt
    @rate= params[:interest_rate].to_f/100
    @nper= params[:number_of_payments].to_f
    @presvalue=params[:present_value].to_f
    i=(1+@rate/12)**(12/12)-1
    annuity=(1-(1/(1+i))**@nper)/i

    @payment=(@presvalue/annuity).to_i

end


  end

