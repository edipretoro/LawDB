use utf8;
package LawDB::Schema::Result::LawIdxSegdir;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

LawDB::Schema::Result::LawIdxSegdir

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<Law_idx_segdir>

=cut

__PACKAGE__->table("Law_idx_segdir");

=head1 ACCESSORS

=head2 level

  data_type: 'integer'
  is_nullable: 0

=head2 idx

  data_type: 'integer'
  is_nullable: 0

=head2 start_block

  data_type: 'integer'
  is_nullable: 1

=head2 leaves_end_block

  data_type: 'integer'
  is_nullable: 1

=head2 end_block

  data_type: 'integer'
  is_nullable: 1

=head2 root

  data_type: 'blob'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "level",
  { data_type => "integer", is_nullable => 0 },
  "idx",
  { data_type => "integer", is_nullable => 0 },
  "start_block",
  { data_type => "integer", is_nullable => 1 },
  "leaves_end_block",
  { data_type => "integer", is_nullable => 1 },
  "end_block",
  { data_type => "integer", is_nullable => 1 },
  "root",
  { data_type => "blob", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</level>

=item * L</idx>

=back

=cut

__PACKAGE__->set_primary_key("level", "idx");


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2012-05-18 10:05:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:bCa7viqaCyJIAtdSDL0HsA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
