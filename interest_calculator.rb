
def input_values
  puts "Enter principal. "
    @principal = gets.chomp
    @principal = @principal.to_f
  puts "Enter rate. "
    @rate = gets.chomp
    @rate = @rate.to_f
    @rate_plus_one = @rate + 1
  puts "Enter additional contribution each year. "
    @contribution = gets.chomp
    @contribution = @contribution.to_f
  puts "Enter years. "
    @years = gets.chomp
    @years = @years.to_f
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
  foo = value.round(2).to_s.reverse
  for i in 0..foo.length-1
    if i == 6 || i == 10 || i == 14 || i == 18
      foo.insert(i, ",")
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