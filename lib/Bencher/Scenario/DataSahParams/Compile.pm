package Bencher::Scenario::DataSahParams::Compile;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Measure compilation speed',
    participants => [
        {
            name => 'dsp',
            fcall_template => q(Data::Sah::Params::compile("int*", ["array*",of=>"int*"])),
        },
        {
            name => 'tp',
            module => 'Type::Params',
            code_template => q(use Type::Params qw(compile); use Types::Standard qw(Int ArrayRef); compile(Int, ArrayRef[Int])),
        },
    ],
};

1;
# ABSTRACT:

=head1 BENCHMARK NOTES

Data::Sah compilation is slower due to doing more stuffs (normalizing schema,
other preparations). If needed, future version of Data::Sah (or
Data::Sah::Params) should cache compilation result so common schemas that are
ecountered several times can be compiled more quickly.
