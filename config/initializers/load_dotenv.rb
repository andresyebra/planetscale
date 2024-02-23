# frozen_string_literal: true

KEYS = %w[RAILS_ENV].freeze

# Validates ENV variables
errors = KEYS.each_with_object([]) do |name, missing|
  missing << name if ENV[name].to_s.empty?
end

puts " >> Missing value for #{errors.join(', ')} ENV variable(s)." if errors.any?
Dotenv.require_keys(KEYS) if Rails.env.development?


