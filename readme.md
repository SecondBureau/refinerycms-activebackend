# Refinery CMS Active Backend
===================

[Refinery CMS](http://refinerycms.com) extension which customizes backend and provides charts.


## Requirements

Refinery CMS version 2.1.x

## Install

Open up your ``Gemfile`` and add at the bottom this line:

```ruby
gem 'refinerycms-activebackend', '~> 2.1.0'
```


Now, run ``bundle install``

Next, to install the groups extension run:

    rails generate refinery:backend

Run database migrations:

    rake db:migrate

Finally seed your database and you're done.

    rake db:seed

## Config

CKEditor
Styles
    

## Developing & Contributing

The version of Refinery to develop this engine against is defined in the gemspec. To override the version of refinery to develop against, edit the project Gemfile to point to a local path containing a clone of refinerycms.

### Testing

Generate the dummy application to test against

    $ bundle exec rake refinery:testing:dummy_app

Run the test suite with [Guard](https://github.com/guard/guard)

     $ bundle exec guard start

Or just with rake spec

     $ bundle exec rake spec

## More Information

* Check out [Refinery CMS Website](http://refinerycms.com/)