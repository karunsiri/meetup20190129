# frozen_string_literal: true

# Requires everything in lib/ folder
Dir['./lib/**/*.rb'].each do |file|
  require file
end

class Object
  def self.after_call(name, &block)
    original_method = instance_method(name)
    define_method name do |*args|
      original_method.bind(self).call(*args)
      block.call
    end
  end
end

spanish = Spanish.new
spanish.greet 'hello'
spanish.greet 'u good?'
