require_relative '../lib/my_inspect.rb'
require 'colorize'

inspect_parameter = [[/\{/, /\}/], [/\(/, /\)/], [/\[/, /\]/]]
inspector = Inspector.new(ARGV.first)

def show_output(input, params)
  input.each do |n|
    puts "check line #{n + 1} for unexpected/missing #{params}".colorize(:red)
  end
end

indicator = []
# To indentify missing or unexpected curly brace(s)
check_point = inspector.inspect_file(inspect_parameter[0].first, inspect_parameter[0].last)
check_point.empty? ? indicator.push(1) : show_output(check_point, 'curly brace(s)')
# To indentify missing or unexpected bracket(s)
check_point = inspector.inspect_file(inspect_parameter[1].first, inspect_parameter[1].last)
check_point.empty? ? indicator.push(1) : show_output(check_point, 'bracket(s)')
# To indentify missing or unexpected square bracket(s)
check_point = inspector.inspect_file(inspect_parameter[2].first, inspect_parameter[2].last)
check_point.empty? ? indicator.push(1) : show_output(check_point, 'square bracket(s)')

puts 'No linter error found in your code.'.colorize(:blue) if indicator.size == 3
