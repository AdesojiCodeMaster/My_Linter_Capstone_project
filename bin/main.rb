require_relative '../lib/my_inspect.rb'
require 'colorize'

inspect_parameter = [[/\{/, /\}/], [/\(/, /\)/], [/\[/, /\]/]]
inspector = Inspector.new(ARGV.first)

def show_output(input, params)
  for n in input
   puts "check for unexpected/missing #{params} in line #{n + 1}" 
  end
end

