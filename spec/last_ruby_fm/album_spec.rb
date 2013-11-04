require 'spec_helper'

describe LastRubyFm::Album, :vcr do
  context 'searching' do
    it 'returns a list of relevant albums' do
      album_name = 'Wasting Light'
      results = LastRubyFm::Album.search(album_name)
      expect(results.size).to_not eql(0)
      expect(results[0]).to be_kind_of(LastRubyFm::Album)
      expect(results[0].name).to eql(album_name)
    end
  end
end