# README

## Requirements
- Ruby 2.6
- Postgres
- Rails 4
- Heroku access

## Setup

```bash
$ bin/setup
```

## Creating new Rails Girls Events

Start the app:

```bash
$ bundle exec rails s
```

Visit [http://localhost:3000](http://localhost:3000)

### Adding new events

To create a new rails girls event go to 
`/events` and click 'Create'

The event will require a title, and asks whether it will be the current event or not.

The current event will be the event that all new applications will be subscribed to.

You will not be allowed to have more than one event as 'current'.


# Viewing the mailers

You can view the mail templates at these routes:  
[Received email](http://localhost:3000/rails/mailers/applications_mailer/application_received)  
[Success email](http://localhost:3000/rails/mailers/applications_mailer/application_success)  
[Rejected email](http://localhost:3000/rails/mailers/applications_mailer/application_rejected)  