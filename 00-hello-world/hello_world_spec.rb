#gem 'minitest', '>= 5.0.0' #this is says it requires minitest this version or higher
require 'minitest/pride' #makes it more colorful
require 'minitest/autorun'
require_relative 'hello_world'

describe "Hello World" do
  it "When given no name, it should greet the world!" do
    expect(hello_world).must_equal 'Hello, World!'
  end

  it "When given 'Alice' it should greet Alice!" do
    expect(hello_world 'Alice').must_equal 'Hello, Alice!'
  end

  it "When given 'Bob' it should greet Bob!" do
    expect(hello_world 'Bob').must_equal 'Hello, Bob!'
  end

  it "When given an empty string it should greet the world!" do
    expect(hello_world '').must_equal 'Hello, World!'
  end
end
