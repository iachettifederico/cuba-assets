# Cuba::Assets

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cuba-assets'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cuba-assets

## Why Cuba::Assets?

Adding Sprockets to Cuba isn't a hard task. It only takes a little boilerplate to get it set up.
This gem just takes that boilerplate out of sight.

## Usage

The first order of business is requiring the plugin and making it available.

```ruby
require "cuba/assets"
Cuba.plugin Cuba::Assets
```

This assumes that you have the following directories in place:

- `<assets_dir>/javascripts`
- `<assets_dir>/styles`
- `<assets_dir>/fonts`
- `<assets_dir>/images`

Where `<assets_dir>` is, by default: `<app_dir>/assets`

With that in place, you can now use the `asset` helper, passing the desired asset's path.
This will return an instance of `Sprockets::BundledAsset`.

## Configurations

### Changing the assets directory

To change the assets directory, just set it on the `settings` hash.

```ruby
Cuba.settings[:assets][:assets_dir]  = nil
```

### Changing the JS and CSS compressors

To change the compressors, add the following lines:

```ruby
Cuba.settings[:assets][:css_compressor]  = :uglify
Cuba.settings[:assets][:js_compressor]   = :scss
```

Take notice that `:uglify` and `:scss` are the default values.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/cuba-assets/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
