require 'test_helper'

class JobTest < MiniTest::Unit::TestCase

  def setup
    @job = TheShoveler::Job.new
  end

  def test_job_run
    mock = MiniTest::Mock.new
    mock.expect :add, true, [TheShoveler::Document]

    @job.server = mock
    @job.run
    assert mock.verify
  end

  # no great way to do this yet, maybe a better
  # mock server
  def test_job_run_count
    skip
  end
end
