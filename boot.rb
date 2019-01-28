# frozen_string_literal: true

# Requires everything in lib/ folder
Dir['./lib/**/*.rb'].each do |file|
  require file
end
