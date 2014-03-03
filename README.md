# TheShoveler

A gem to shovel data into a datastore (like Apache Solr!)

I constantly need loads of fakey data that loosely resembles real life.
This is a gem to help with that!

## Installation

Add this line to your application's Gemfile:

    gem 'theShoveler'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install theShoveler

## Usage

The Shoveler comes complete with it's own command line tool.

```bash
shovel load solr --fields=title:Faker::Lorem.sentence --documents=20
```

Will load 20 fake data using the "solr" server module with a field
called title whose values are a single "Lorem Ipsum" sentance.

Take a look at the docs for Faker to see what other options exist:
http://rubydoc.info/github/stympy/faker/master/frames

Features on our to-do list:
- More generators
- Clean DSL for creating smarter generators (ala Factory girl)
- Distrubuted data generation
- More server backends
- Specify a range or distribution of random values, so a field has more
  similar values across all docs

