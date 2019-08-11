# README

## Requirements
- Ruby 2.6.0
- [Postgres](Gemfile#line#7)
- Rails 4
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

# Contributing

Please read our [Contributing guidelines](CONTRIBUTING.md) before anything else. 

- Fork it
- Create your feature branch `$ git checkout -b feature/my-new-feature`
- Commit your changes `$ git commit -am 'Added some feature'`
- Push to the branch `$ git push origin feature/my-new-feature`
- Create new [Pull Request](https://github.com/railsgirlssydney/rails-girls-events/pulls)