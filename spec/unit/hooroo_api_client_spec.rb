require 'rate_watchers/hooroo_api_client'

module RateWatchers
  RSpec.describe HoorooApiClient do

    subject(:client) do
      HoorooApiClient.new
    end

    let(:rates) do
      VCR.use_cassette('get-rates') do
        client.get_rates
      end
    end

    describe '#get_rates' do

      it 'returns 20 rates by default' do
        expect(rates.count).to eq 20
      end

      it 'returns deserialised rates' do
        rate = rates.first

        expect(rate.property_id).to eq 7376
        expect(rate.name).to eq 'Rydges Melbourne'
        expect(rate.lowest_cost_offer_name).to eq 'Bonus Points Offer'
        expect(rate.result_position).to eq 1
        expect(rate.promotion).to eq (
          Promotion.new(
            code: 'QANTASDBL-ONGOING',
            campaign_code: 'qantasdouble2',
            sash_text: 'Bonus Points'
          )
        )
      end
    end

  end
end
