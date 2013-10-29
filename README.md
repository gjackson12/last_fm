# LastRubyFm

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'last_ruby_fm'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install last_ruby_fm

## Usage

artist = LastRubyFm::Artist.search('Mumford and Sons').first
artist.name # 'Mumford and Sons'
artist.image # 'http://userserve-ak.last.fm/serve/500/49582427/Mumford++Sons++PNG.png'

album = LastRubyFm::Album.search('Purple')[1]
album.artist  # 'Stone Temple Pilots'
album.tracks # retrieves a list of LastRubyFm::Track objects for the given album

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
