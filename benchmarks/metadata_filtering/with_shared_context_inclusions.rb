require_relative 'environment'

tag_suffix = ENV['NO_MATCH'] ? :dont_apply_it : :apply_it

1.upto(10) do |i|
  RSpec.shared_context "inner context #{i}", :"inner_#{tag_suffix}" do
  end

  RSpec.shared_context "outer context #{i}", :"outer_#{tag_suffix}" do
  end
end

require_relative "define_and_run_examples"

__END__
