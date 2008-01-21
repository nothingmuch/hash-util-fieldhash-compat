#!/usr/bin/perl -w

use strict;

use ExtUtils::MakeMaker;

my $have_fieldhash = eval { require Hash::Util::FieldHash };

WriteMakefile(
	NAME         => '',
	VERSION_FROM => '',
	INSTALLDIRS  => 'site',
	SIGN         => 1,
	PL_FILES     => { },
	PREREQ_PM    => {
		'Test::use::ok' => 0,
		( $have_fieldhash ? () : (
			'Tie::RefHash::Weak' => 0,
			'Tie::RefHash' => 0,
		)),
	},
);

