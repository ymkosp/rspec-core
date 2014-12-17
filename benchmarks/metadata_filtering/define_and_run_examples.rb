1.upto(30) do |i|
  RSpec.describe "Group #{i}", :outer_apply_it => i.even? do
    1.upto(30) do |i2|
      example("ex #{i2}") { }

      context "nested #{i2}", :inner_apply_it => i2.odd? do
        1.upto(30) do |i3|
          example("ex #{i3}") { }
        end
      end
    end
  end
end

RSpec::Core::Runner.invoke
