require 'test/unit'
require 'html_report'
require 'plaintext_report'

class EmptyTest < Test::Unit::TestCase
  def setup
    @html_report = HTMLReport.new
    @plaintext_report = PlainTextReport.new
  end

  def test_not_empty_html_report
    assert ! @html_report.nil?
  end

  def test_not_emtpy_plaintext_report
    assert ! @plaintext_report.nil?
  end
end
