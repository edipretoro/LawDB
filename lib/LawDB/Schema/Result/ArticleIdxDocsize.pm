use utf8;
package LawDB::Schema::Result::ArticleIdxDocsize;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

LawDB::Schema::Result::ArticleIdxDocsize

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<Article_idx_docsize>

=cut

__PACKAGE__->table("Article_idx_docsize");

=head1 ACCESSORS

=head2 docid

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 size

  data_type: 'blob'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "docid",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "size",
  { data_type => "blob", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</docid>

=back

=cut

__PACKAGE__->set_primary_key("docid");


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2012-05-18 10:05:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:qBPoptJDHs3V82b+gOme8A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
