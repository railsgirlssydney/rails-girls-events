[![forthebadge](https://forthebadge.com/images/badges/made-with-ruby.svg)](https://forthebadge.com)

[![Build Status](https://travis-ci.com/railsgirlssydney/rails-girls-events.svg?branch=master)](https://travis-ci.com/railsgirlssydney/rails-girls-events)

[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v1.4%20adopted-ff69b4.svg)](code-of-conduct.md)

# README

Rails Girls Events is an app developed to assist in registering and managing attendees for Rails Girls Sydney.

[Changelog](CHANGELOG.md)

## Requirements
- [Ruby](.ruby-version) 2.6.0
- [Postgres](Gemfile#line#7) 9.6
- [Rails 4.2](Gemfile#line#5)
- Heroku access

## Setup

```bash
$ bin/setup
```

## Database 

Generate a backup

```bash
$ heroku pg:backups:capture --app rails-girls-events
```

Download the latest dump

```bash
$ heroku pg:backups:download -a rails-girls-events
```

Restore the database, change the `PG_USERNAME` field to your local config: 

```bash
$ pg_restore -h localhost -U PG_USERNAME -d rails-girls-events_development --no-owner --clean --verbose --format custom latest.dump
```

## Running the app

Start the app:

```bash
$ bundle exec rails s
```

Visit [http://localhost:3000](http://localhost:3000)

### Testing

Testing is with Capybara and Rspec, run:

```bash
$ bundle exec rspec
```

This task investigates the routes definition, then shows the unused routes and unreachable action methods.

```bash
$ rake traceroute
```

### How to use the app

Further information on the usage of the app can be found in the [Wiki](https://github.com/railsgirlssydney/rails-girls-events/wiki).

# Good to knows

[Changelog Generator](https://github.com/github-changelog-generator/github-changelog-generator) is installed locally to generate the output file. 

# Contributing

Please read our [Contributing guidelines](CONTRIBUTING.md) before anything else. 

- Fork it
- Create your feature branch `$ git checkout -b feature/my-new-feature`
- Commit your changes `$ git commit -am 'Added some feature'`
- Push to the branch `$ git push origin feature/my-new-feature`
- Create new [Pull Request](https://github.com/railsgirlssydney/rails-girls-events/pulls)