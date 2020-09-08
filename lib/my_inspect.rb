class Inspector
  def initialize(inputfile)
    @inputfile = inputfile
    @flaw_point = []
  end
  
  def inspect_file(first, last)
    @flaw_point = []
    
    File.open(@inputfile).readlines.each_with_index do |line, idx|
      if line.rindex(first).nil? && !line.rindex(last).nil? || 
        !line.rindex(first).nil? && line.rindex(last).nil?
        @flaw_point.push(idx)
      end
      @flaw_point.push(idx) if line.rindex(first) > line.rindex(last)
      @flaw_point.push(idx) if line.scan(first).count != line.scan(last).count
    end
    File.open(@inputfile).close
    @flaw_point.uniq
  end
end