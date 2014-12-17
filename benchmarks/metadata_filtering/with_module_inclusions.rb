require_relative 'environment'

tag_suffix = ENV['NO_MATCH'] ? :dont_apply_it : :apply_it

RSpec.configure do |c|
  1.upto(10) { c.include Module.new, :"inner_#{tag_suffix}" }
  1.upto(10) { c.include Module.new, :"outer_#{tag_suffix}" }
end

require_relative "define_and_run_examples"

__END__
