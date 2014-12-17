require_relative 'environment'
require_relative "define_and_run_examples"

__END__

$ export OLD_REV=2e0b2e3473435852834ba57e83a3ea0fe1f1e34c
$ git checkout $OLD_REV -- lib
$ time ruby benchmarks/metadata_filtering/with_no_inclusions.rb | grep Finished
Finished in 0.70994 seconds (files took 0.65193 seconds to load)
ruby benchmarks/metadata_filtering/with_no_inclusions.rb  1.32s user 0.10s system 95% cpu 1.480 total

$ time NO_MATCH=1 ruby benchmarks/metadata_filtering/with_no_inclusions.rb | grep Finished
Finished in 0.77085 seconds (files took 0.76068 seconds to load)
NO_MATCH=1 ruby benchmarks/metadata_filtering/with_no_inclusions.rb  1.50s user 0.10s system 96% cpu 1.652 total

$ export NEW_REV=d4fa8cfe517dff11f8abfd6295cb3d29e9a15d1e
$ git checkout $NEW_REV -- lib
$ time ruby benchmarks/metadata_filtering/with_no_inclusions.rb | grep Finished
Finished in 0.75976 seconds (files took 0.82297 seconds to load)
ruby benchmarks/metadata_filtering/with_no_inclusions.rb  1.57s user 0.10s system 97% cpu 1.716 total

$ time NO_MATCH=1 ruby benchmarks/metadata_filtering/with_no_inclusions.rb | grep Finished
Finished in 0.7367 seconds (files took 0.84171 seconds to load)
NO_MATCH=1 ruby benchmarks/metadata_filtering/with_no_inclusions.rb  1.56s user 0.10s system 97% cpu 1.699 total
