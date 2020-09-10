class Test
  array_test = %w[a b c d e f]
  array_test.each { |x| puts x }
  def hello_method(*_input_)
    print 'Ruby'
  end
end
