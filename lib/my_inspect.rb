class Inspector
  def initialize(inputfile)
    @inputfile = inputfile
  end

  def checker(alpha, omega)
    inspect_file(alpha, omega)
  end

  private

  def inspect_file(first, last) # rubocop:disable Metrics/CyclomaticComplexity
    flaw_point = []

    File.open(@inputfile).readlines.each_with_index do |line, idx|
      if line.rindex(first).nil? && !line.rindex(last).nil? ||
         !line.rindex(first).nil? && line.rindex(last).nil?
        flaw_point.push(idx)
      end
      flaw_point.push(idx) if line.rindex(first).to_i > line.rindex(last).to_i
      flaw_point.push(idx) unless line.scan(first).count == line.scan(last).count
    end
    File.open(@inputfile).close
    flaw_point.uniq
  end
end
