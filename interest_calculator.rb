
def input_values
  puts "Enter principal. "
    @principal = gets.to_f
  puts "Enter rate. "
    @rate = gets.to_f
    @rate_plus_one = @rate + 1
  puts "Enter additional contribution each year. "
    @contribution = gets.to_f
  puts "Enter years. "
    @years = gets.to_f
  40.times { print "-" }
  puts
end 

def calculate
  @final_amount = (@principal * (@rate_plus_one ** @years)) + 
    (@contribution * (((@rate_plus_one ** @years) - 1) / @rate))
  @total_contributions = ((@years * @contribution) + @principal)
  @interest = (@final_amount - @total_contributions)
end

def format_result(value)
  dp = value.round(2).to_s.split(".")
  if dp[1].length < 2
    foo = value.round(2).to_s.reverse
    for i in 0..foo.length
      if i == 5 or i == 9 or i == 13 or i == 18
        foo.insert(i, ",")
      end
    end
  else
    foo = value.round(2).to_s.reverse
    for i in 0..foo.length
      if i == 6 or i == 10 or i == 14 or i == 19
        foo.insert(i, ",")
      end
    end
  end
  foo.reverse
end

def compound_calc
  input_values
  calculate
  puts "Final balance: #{format_result(@final_amount)}"
  puts "Total contributions: #{format_result(@total_contributions)}"
  puts "Total interest: #{format_result(@interest)}"
end

compound_calc