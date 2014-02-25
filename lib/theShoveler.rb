require "theShoveler/version"

module TheShoveler
  def self.logger
    @logger
  end
  def self.logger=(logger)
    @logger = logger
  end
end

require 'theShoveler/document'
require 'theShoveler/job'
require 'theShoveler/target'
