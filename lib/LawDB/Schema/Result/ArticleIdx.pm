use utf8;
package LawDB::Schema::Result::ArticleIdx;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

LawDB::Schema::Result::ArticleIdx

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<Article_idx>

=cut

__PACKAGE__->table("Article_idx");

=head1 ACCESSORS

=head2 numid

  data_type: (empty string)
  is_nullable: 1

=head2 lawid

  data_type: (empty string)
  is_nullable: 1

=head2 numord

  data_type: (empty string)
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "numid",
  { data_type => "", is_nullable => 1 },
  "lawid",
  { data_type => "", is_nullable => 1 },
  "numord",
  { data_type => "", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2012-05-18 10:05:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:KD18okOJPv02a8FAOQ2zMQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
