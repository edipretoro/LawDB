#! /usr/bin/perl -w

use strict;
use warnings;
package My::LawDB::Schema;
use base qw(DBIx::Class::Schema::Loader);
package main;
use Dancer ':syntax';
use Dancer::Plugin::DBIC;
use Template;

my $schema = My::LawDB::Schema->connect('dbi:SQLite:dbname=LawDB.db');

my @laws = $schema->resultset('Law')->search();

get '/list' => sub {
  template 'list', { laws => \@laws };
};

get '/law/:id' => sub {
  template 'law', { laws => \@laws };
};


get '/search' => sub {
  template 'search';
};

post '/results' => sub {
  my $query = params->{query};
  my @articles = $schema->resultset('ArticleIdx')->search({content => {match => $query}});
  my @lawids;
  foreach $_ (@articles) {
    push (@lawids,$_->get_column('lawid'));
  }
  my @laws;
  foreach $_ (@lawids) {
    @laws = $schema->resultset('Law')->search({id => $_});
  }
  template 'results', {laws => \@laws,articles => \@articles};
};


get '/' => sub {
    template 'index';
};


dance;
