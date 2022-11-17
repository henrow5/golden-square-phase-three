class Calculator
  def initialize(io)
    @io = io
  end

  def run
    @io.puts "Hello. I will subtract two numbers."
    @io.puts "Please enter a number"
    number = @io.gets.chomp.to_i
    @io.puts "Please enter another number"
    number2 = @io.gets.chomp.to_i
    @io.puts "Here is your result:"
    result = number - number2
    @io.puts "#{number} - #{number2} = #{result}"
  end
end

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1

# calculator = Calculator.new(Kernel)
# calculator.run
