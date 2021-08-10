use strict;
use warnings;

use CAD::Format::DWG::1_40;
use File::Object;
use Test::More 'tests' => 11;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/entity/text')->set;

# Test.
my $obj = CAD::Format::DWG::1_40->from_file(
	$data_dir->file('TEXT1.DWG')->s,
);
my $entity1 = $obj->entities->[0];
isa_ok($entity1, 'CAD::Format::DWG::1_40::Entity');
is($entity1->entity_type, 7, 'Get entity type (7).');
my $text1_data = $entity1->data;
is($text1_data->layer, 1, 'Text layer (1).');
my $x = unpack 'd<', $text1_data->x;
is($x, 1, 'Text x (1).');
my $y = unpack 'd<', $text1_data->y;
is($y, 2, 'Text y (2).');
my $height = unpack 'd<', $text1_data->height;
is($height, 2.3758787847868, 'Text height (2.3758787847868).');
my $angle = unpack 'd<', $text1_data->angle;
is($angle, 0.785398163397448, 'Text angle in radians (0.785398163397448).');
my $size = $text1_data->size;
is($size, 3, 'Text size (3).');
my $value = $text1_data->value;
is($value, 'Foo', 'Text value (Foo).');
my $entities = @{$obj->entities};
is($entities, 1, 'Number of entities (1).');