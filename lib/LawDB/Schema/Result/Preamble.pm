use utf8;
package LawDB::Schema::Result::Preamble;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

LawDB::Schema::Result::Preamble

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<Preamble>

=cut

__PACKAGE__->table("Preamble");

=head1 ACCESSORS

=head2 numid

  data_type: 'text'
  is_foreign_key: 1
  is_nullable: 0

=head2 lawid

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 text

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "numid",
  { data_type => "text", is_foreign_key => 1, is_nullable => 0 },
  "lawid",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "text",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</numid>

=back

=cut

__PACKAGE__->set_primary_key("numid");

=head1 RELATIONS

=head2 lawid

Type: belongs_to

Related object: L<LawDB::Schema::Result::Law>

=cut

__PACKAGE__->belongs_to(
  "lawid",
  "LawDB::Schema::Result::Law",
  { id => "lawid" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 numid

Type: belongs_to

Related object: L<LawDB::Schema::Result::LawVersion>

=cut

__PACKAGE__->belongs_to(
  "numid",
  "LawDB::Schema::Result::LawVersion",
  { numid => "numid" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2012-05-18 10:05:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5fvAStQvKnf76tU44QcftA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
