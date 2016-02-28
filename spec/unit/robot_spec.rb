require 'rate_watchers/robot'

module RateWatchers
  RSpec.describe Robot do

    subject(:robot) do
      Robot.new(
        api_clinet: api_clinet,
        writer: writer
      )
    end

    let(:api_clinet) { instance_double(HoorooApiClient) }
    let(:writer) { instance_double(NullWriter) }

    describe '#run' do

      it 'gets the rates then writes them' do
        expect(api_clinet).to receive(:get_rates) { 'rates' }
        expect(writer).to receive(:write).with('rates')
        robot.run
      end
    end

  end
end
