require 'spec_helper'

describe LastRubyFm::Artist, :vcr do
  context 'searching' do
    it 'returns a list of relevant artists' do
      artist_name = 'Stone Temple Pilots'
      results = LastRubyFm::Artist.search(artist_name)
      expect(results.size).to_not eql(0)
      expect(results[0]).to be_kind_of(LastRubyFm::Artist)
      expect(results[0].name).to eql(artist_name)
    end
  end
end