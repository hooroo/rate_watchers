require 'rate_watchers/rate'

RSpec.describe Rate do

  subject(:rate) do
    Rate.new(rate_data)
  end

  let(:rate_data) do
    {
      property_id: 1234,
      name: 'Hotel California',
      lowest_cost_offer_name: 'such a lovely place',
      promotion: promotion,
      result_position: 0
    }
  end

  let(:promotion) do
    {
      code: 'QANTASDBL-ONGOING',
      campaign_code: 'qantasdouble2',
      sash_text: 'Bonus Points'
    }
  end

  describe '#property_id' do
    subject { rate.property_id }
    it { is_expected.to eq 1234 }
  end

  describe '#name' do
    subject { rate.name }
    it { is_expected.to eq 'Hotel California' }
  end

  describe '#lowest_cost_offer_name' do
    subject { rate.lowest_cost_offer_name }
    it { is_expected.to eq 'such a lovely place' }
  end

  describe '#promotion' do
    let(:promo) { rate.promotion }

    it 'returns the right promotion object' do
      expect(promo.code).to eq 'QANTASDBL-ONGOING'
      expect(promo.campaign_code).to eq 'qantasdouble2'
      expect(promo.sash_text).to eq 'Bonus Points'
    end
  end

  describe '#result_position' do

    it 'transforms the position into a 1-based index' do
      expect(rate.result_position).to eq 1
    end
  end

end
