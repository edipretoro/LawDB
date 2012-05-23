use utf8;
package LawDB::Schema::Result::LawVersion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

LawDB::Schema::Result::LawVersion

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<LawVersion>

=cut

__PACKAGE__->table("LawVersion");

=head1 ACCESSORS

=head2 lawid

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 numid

  data_type: 'text'
  is_nullable: 0

=head2 date

  data_type: 'date'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "lawid",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "numid",
  { data_type => "text", is_nullable => 0 },
  "date",
  { data_type => "date", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</numid>

=back

=cut

__PACKAGE__->set_primary_key("numid");

=head1 RELATIONS

=head2 appendixes

Type: has_many

Related object: L<LawDB::Schema::Result::Appendix>

=cut

__PACKAGE__->has_many(
  "appendixes",
  "LawDB::Schema::Result::Appendix",
  { "foreign.numid" => "self.numid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 articles

Type: has_many

Related object: L<LawDB::Schema::Result::Article>

=cut

__PACKAGE__->has_many(
  "articles",
  "LawDB::Schema::Result::Article",
  { "foreign.numid" => "self.numid" },
  { cascade_copy => 0, cascade_delete => 0 },
);

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

=head2 preamble

Type: might_have

Related object: L<LawDB::Schema::Result::Preamble>

=cut

__PACKAGE__->might_have(
  "preamble",
  "LawDB::Schema::Result::Preamble",
  { "foreign.numid" => "self.numid" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2012-05-18 10:05:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:eYdZNd2izTyjd5tpixtIOQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
