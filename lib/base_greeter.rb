# frozen_string_literal: true

class BaseGreeter
  def self.handlers
    @handlers ||= {}
  end

  def self.with(greeting, &block)
    handlers[greeting] = callable(block)
  end

  def greet(greeting)
    self.class.handlers[greeting].bind(self).call
  end

  private

  def self.callable(block)
    define_method :temp, block
    method = instance_method(:temp)
    remove_method :temp

    method
  end
end
