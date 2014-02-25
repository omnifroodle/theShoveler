require 'test_helper'

class DocumentTest < MiniTest::Unit::TestCase
  def setup
    @document = TheShoveler::Document.new
  end

  def test_creates_attributes
    refute_nil @document.doc_attributes[:title]
  end
end
