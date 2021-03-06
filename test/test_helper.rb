begin
  require 'simplecov'; 
  SimpleCov.start do
    add_group "Lib", 'lib'
  end
rescue LoadError
end

begin; require 'turn'; rescue LoadError; end

require 'minitest/spec'
require 'minitest/autorun'

require 'active_support/time' # For testing Date and TimeWithZone objects

require 'active_model'
require 'date_validator'

class TestRecord
  include ActiveModel::Validations
  attr_accessor :expiration_date

  def initialize(expiration_date)
    @expiration_date = expiration_date
  end
end
