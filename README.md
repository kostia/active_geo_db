# ActiveGeoDb

Rails (ActiveRecord) lib for accessing OpenGeoDb

## Installation

Add this line to your application's Gemfile:

```ruby
gem("active_geo_db")
```

If you want to manage OpenGeoDb databases from within the Rails project add to your Gemfile also:

```ruby
gem("open_geo_db", :require => false) # See https://github.com/kostia/open_geo_db for detailed informations
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install active_geo_db
```

## Usage

First create an OpenGeoDb database (see https://github.com/kostia/open_geo_db)

Now you should be able to retrieve coordinates via:

```ruby
ActiveGeoDb.coordinates("Berlin") # => [52.5167, 13.4]
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
