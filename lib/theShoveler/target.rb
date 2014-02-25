module TheShoveler
  class Target
    attr_accessor :connection_info
    def initialize(connection_info)
      @conneciton_info = connection_info
    end

    def add(document)
      return document.doc_attributes
    end
  end
end


