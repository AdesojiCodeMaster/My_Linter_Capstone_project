class Inspector
  def initialize(inputfile)
    @inputfile = inputfile
    @flaw_point = []
  end
  
  def inspect_file(first, last)
    @flaw_point = []
    
    File.open(@inputfile).readlines.each_with_index do |lines, idx|
      if lines.rindex(first).nil? && !lines.rindex(last).nil? || 
        !lines.rindex(first).nil? && lines.rindex(last).nil?
        @flaw_point.push(idx)
      end
      @flaw_point.push(idx) if lines.rindex(first).to_i > lines.rindex(last).to_i
      @flaw_point.push(idx) if lines.scan(first).count != lines.scan(last).count
    end
    File.open(@inputfile).close
    @flaw_point.uniq
  end
end


