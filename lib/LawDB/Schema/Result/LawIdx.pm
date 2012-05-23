use utf8;
package LawDB::Schema::Result::LawIdx;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

LawDB::Schema::Result::LawIdx

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<Law_idx>

=cut

__PACKAGE__->table("Law_idx");

=head1 ACCESSORS

=head2 id

  data_type: (empty string)
  is_nullable: 1

=head2 lastdate

  data_type: (empty string)
  is_nullable: 1

=head2 presc

  data_type: (empty string)
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "", is_nullable => 1 },
  "lastdate",
  { data_type => "", is_nullable => 1 },
  "presc",
  { data_type => "", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2012-05-18 10:05:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WT9OTXNT3wb/Imm5FrQZMA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
