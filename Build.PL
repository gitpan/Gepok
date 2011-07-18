
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'Module::Build' => '0.3601'
  },
  'configure_requires' => {
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'Preforking HTTP server, HTTPS/Unix socket/multiports/PSGI',
  'dist_author' => [
    'Steven Haryanto <stevenharyanto@gmail.com>'
  ],
  'dist_name' => 'Gepok',
  'dist_version' => '0.02',
  'license' => 'perl',
  'module_name' => 'Gepok',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'File::HomeDir' => '0',
    'HTTP::Daemon' => '0',
    'HTTP::Daemon::SSL' => '0',
    'HTTP::Daemon::UNIX' => '0',
    'HTTP::Date' => '0',
    'HTTP::Status' => '0',
    'IO::Scalar' => '0',
    'Log::Any' => '0',
    'Moo' => '0',
    'Plack' => '0',
    'SHARYANTO::Proc::Daemon::Prefork' => '0.03',
    'Test::More' => '0.96',
    'perl' => '5.010000'
  },
  'script_files' => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
