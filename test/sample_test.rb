# encoding: UTF-8
require './sample_test_helper.rb'
# Class for Test
class MyTest < MiniTest::Unit::TestCase

  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

   def test_hello_world
     get '/'
     assert last_response.ok?
     assert_equal 'Hello, World!', last_response.body
   end

  def test_post
    post '/'
    assert last_response.ok?
    assert_equal 'Caught a post', last_response.body
  end

  def test_form_data

  end
end
