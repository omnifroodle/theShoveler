module TheShoveler
  class Job
    attr_accessor :target
    attr_accessor :count
    def initialize(target, count)
      @target = target
      @count = count
    end

    def run
      TheShoveler::logger.info 'pushing docs'
      puts count
      @count.times do |c|
        @target.add Document.new
        puts '.'
      end
    end
  end
end
