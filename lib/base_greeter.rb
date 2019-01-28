# frozen_string_literal: true

class BaseGreeter
  def self.handlers
    @handlers ||= {}
  end

  def self.with(greeting, &block)
    handlers[greeting] = block
  end

  def greet(greeting)
    self.class.handlers[greeting].call
  end
end
