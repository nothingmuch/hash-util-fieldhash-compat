#!/usr/bin/perl -w

use strict;

use ExtUtils::MakeMaker;

my $have_fieldhash = eval { require Hash::Util::FieldHash };

WriteMakefile(
	NAME         => 'Hash::Util::FieldHash::Compat',
	VERSION_FROM => 'lib/Hash/Util/FieldHash/Compat.pm',
	INSTALLDIRS  => 'site',
	SIGN         => 1,
	PL_FILES     => { },
	PREREQ_PM    => {
		'Test::use::ok' => 0,
		( $have_fieldhash ? () : (
			'Tie::RefHash::Weak' => '0.08',
			'Tie::RefHash' => '1.38',
		)),
	},
);

