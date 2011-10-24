require 'html_report'
require 'plaintext_report'

report = HTMLReport.new
report.output_report

report = PlainTextReport.new
report.output_report
