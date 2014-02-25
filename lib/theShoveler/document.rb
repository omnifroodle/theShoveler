require 'faker'

module TheShoveler
  class Document
    attr_reader :doc_attributes
    @@fields = {}
    def self.get_field_value(args)
      generater = args.split('::')
      return Faker.class_eval(generater[1])
    end

    # args are pretty naive right now just Faker::Code.isbn
    def self.fields_from_hash(hash = {})
      hash.each do |k,v|
        define_field k, v
      end
    end
    def initialize
      @doc_attributes = {}
      @@fields.each do |field, args|
        @doc_attributes[field] = Document::get_field_value(args)
      end
    end

    def self.define_field(name, args)
      TheShoveler::logger.info "field #{name}: #{args}"
      @@fields[name] = args
    end

  end
end
