require File.expand_path('../support/test_helper', __dir__)

require 'minitest/autorun'

class ApiTest < Minitest::Test
  include RequestHelper

  def test_no_api_key
    request('GET', '?s=star', {}, 'http://www.omdbapi.com/')
    assert last_response.obj['Response'], "False"
    assert last_response.obj['Error'], "No API key provided."
  end
end
