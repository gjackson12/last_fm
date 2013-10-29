module LastRubyFm
  class Album
    attr_reader :released, :tracks, :mbid
    def initialize(attributes)
      @album_name = attributes['album_name']
    end

    class << self
      def search(phrase)
        res = connection.get('/2.0/', {
          method: 'album.search',
          album: phrase,
          api_key: LastRubyFm.api_key,
          format: 'json'
        })
        parsed_results = JSON.parse(res.body)
        if parsed_results['results'] && parsed_results['results']['albummatches']
          parsed_results['results']['albummatches']['album'].map do |album_attributes|
            new(album_attributes)
          end
        else
          []
        end
      end

      protected
      def connection
        conn ||= Faraday.new(:url => 'http://ws.audioscrobbler.com') do |faraday|
          faraday.request  :url_encoded             # form-encode POST params
          faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
        end
      end
    end
  end
end