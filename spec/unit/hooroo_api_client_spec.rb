require 'rate_watchers/hooroo_api_client'

module RateWatchers
  RSpec.describe HoorooApiClient do

    subject(:client) do
      HoorooApiClient.new
    end

    describe '#get_rates' do

      it 'works' do
        r = client.get_rates
      end
    end

  end
end
