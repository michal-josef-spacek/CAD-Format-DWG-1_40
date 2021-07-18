# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;
use Encode;

########################################################################
package CAD::Format::DWG::1_40;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{header} = CAD::Format::DWG::1_40::Header->new($self->{_io}, $self, $self->{_root});
}

sub header {
    my ($self) = @_;
    return $self->{header};
}

########################################################################
package CAD::Format::DWG::1_40::Header;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{magic} = Encode::decode("ascii", IO::KaitaiStruct::Stream::bytes_terminate($self->{_io}->read_bytes(6), 0, 0));
    $self->{zeros} = $self->{_io}->read_bytes(5);
    $self->{unknown1} = $self->{_io}->read_bytes(29);
    $self->{number_of_entities} = $self->{_io}->read_s2le();
    $self->{unknown2} = $self->{_io}->read_bytes(112);
    $self->{snap} = $self->{_io}->read_s1();
    $self->{unknown3} = $self->{_io}->read_bytes(1);
    $self->{snap_value} = $self->{_io}->read_bytes(8);
    $self->{grid} = $self->{_io}->read_s1();
    $self->{unknown4} = $self->{_io}->read_bytes(9);
    $self->{ortho} = $self->{_io}->read_s1();
    $self->{unknown5} = $self->{_io}->read_bytes(3);
    $self->{fill} = $self->{_io}->read_s1();
    $self->{unknown6} = $self->{_io}->read_bytes(17);
    $self->{actual_layer} = $self->{_io}->read_s1();
    $self->{unknown7} = $self->{_io}->read_bytes(1);
    $self->{actual_color} = $self->{_io}->read_s1();
    $self->{unknown8} = $self->{_io}->read_bytes(273);
    $self->{units_type} = $self->{_io}->read_s1();
    $self->{unknown9} = $self->{_io}->read_bytes(1);
    $self->{number_of_digits} = $self->{_io}->read_s1();
    $self->{unknown10} = $self->{_io}->read_bytes(5);
    $self->{axis} = $self->{_io}->read_s1();
}

sub magic {
    my ($self) = @_;
    return $self->{magic};
}

sub zeros {
    my ($self) = @_;
    return $self->{zeros};
}

sub unknown1 {
    my ($self) = @_;
    return $self->{unknown1};
}

sub number_of_entities {
    my ($self) = @_;
    return $self->{number_of_entities};
}

sub unknown2 {
    my ($self) = @_;
    return $self->{unknown2};
}

sub snap {
    my ($self) = @_;
    return $self->{snap};
}

sub unknown3 {
    my ($self) = @_;
    return $self->{unknown3};
}

sub snap_value {
    my ($self) = @_;
    return $self->{snap_value};
}

sub grid {
    my ($self) = @_;
    return $self->{grid};
}

sub unknown4 {
    my ($self) = @_;
    return $self->{unknown4};
}

sub ortho {
    my ($self) = @_;
    return $self->{ortho};
}

sub unknown5 {
    my ($self) = @_;
    return $self->{unknown5};
}

sub fill {
    my ($self) = @_;
    return $self->{fill};
}

sub unknown6 {
    my ($self) = @_;
    return $self->{unknown6};
}

sub actual_layer {
    my ($self) = @_;
    return $self->{actual_layer};
}

sub unknown7 {
    my ($self) = @_;
    return $self->{unknown7};
}

sub actual_color {
    my ($self) = @_;
    return $self->{actual_color};
}

sub unknown8 {
    my ($self) = @_;
    return $self->{unknown8};
}

sub units_type {
    my ($self) = @_;
    return $self->{units_type};
}

sub unknown9 {
    my ($self) = @_;
    return $self->{unknown9};
}

sub number_of_digits {
    my ($self) = @_;
    return $self->{number_of_digits};
}

sub unknown10 {
    my ($self) = @_;
    return $self->{unknown10};
}

sub axis {
    my ($self) = @_;
    return $self->{axis};
}

1;
