require 'rsolr'

module TheShoveler::Targets
  class Solr < TheShoveler::Target
    attr_accessor :starting_id
    def initialize(connection_info)
      super(connection_info)
      @starting_id ||= 0
      @solr = RSolr.connect url: connection_info[:url]
    end

    def add(document)
      super(document)
      unless document.doc_attributes[:id]
        document.doc_attributes[:id] = @starting_id
        @starting_id += 1
      end
      return @solr.add document.doc_attributes
    end
  end
end

