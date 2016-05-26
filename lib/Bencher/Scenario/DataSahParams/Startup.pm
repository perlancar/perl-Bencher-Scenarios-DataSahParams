package Bencher::Scenario::DataSahParams::Startup;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark startup of Data::Sah::Params',
    participants => [
        {
            name => 'perl',
            perl_cmdline => ["-e1"],
        },
        {
            name => 'load_dsp',
            summary => 'Load Data::Sah::Params',
            perl_cmdline => ["-MData::Sah::Params=compile", "-e1"],
        },
        {
            name => 'load_tp',
            summary => 'Load Type::Params',
            perl_cmdline => ["-MType::Params=compile", "-e1"],
        },
    ],
};

1;
# ABSTRACT:
