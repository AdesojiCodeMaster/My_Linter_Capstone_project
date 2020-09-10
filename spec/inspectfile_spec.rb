require_relative '../lib/my_inspect.rb'
describe Inspector do
  context '#checker' do
    let(:test_file) { Inspector.new('test/test.rb') }
    it 'returns an array with point where flaw occurred' do
      expect(test_file.checker(/\{/, /\}/).class).to eq(Array)
    end
    it 'returns an array with point where flaw occurred' do
      expect(test_file.checker(/\(/, /\)/).class).to eq(Array)
    end
    it 'returns an array with point where flaw occurred' do
      expect(test_file.checker(/\[/, /\]/).class).to eql(Array)
    end
    it 'raises error when no argument is given' do
      expect { test_file.checker }.to raise_error(ArgumentError)
    end
  end
end
