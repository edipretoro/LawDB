use utf8;
package LawDB::Schema::Result::Law;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

LawDB::Schema::Result::Law

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<Law>

=cut

__PACKAGE__->table("Law");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 content

  data_type: 'text'
  is_nullable: 0

=head2 lastdate

  data_type: 'date'
  is_nullable: 0

=head2 presc

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "content",
  { data_type => "text", is_nullable => 0 },
  "lastdate",
  { data_type => "date", is_nullable => 0 },
  "presc",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 appendixes

Type: has_many

Related object: L<LawDB::Schema::Result::Appendix>

=cut

__PACKAGE__->has_many(
  "appendixes",
  "LawDB::Schema::Result::Appendix",
  { "foreign.lawid" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 articles

Type: has_many

Related object: L<LawDB::Schema::Result::Article>

=cut

__PACKAGE__->has_many(
  "articles",
  "LawDB::Schema::Result::Article",
  { "foreign.lawid" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 law_versions

Type: has_many

Related object: L<LawDB::Schema::Result::LawVersion>

=cut

__PACKAGE__->has_many(
  "law_versions",
  "LawDB::Schema::Result::LawVersion",
  { "foreign.lawid" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 preambles

Type: has_many

Related object: L<LawDB::Schema::Result::Preamble>

=cut

__PACKAGE__->has_many(
  "preambles",
  "LawDB::Schema::Result::Preamble",
  { "foreign.lawid" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2012-05-18 10:05:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:v3kBKJ0ZRGZ43kBj8AYV4Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
