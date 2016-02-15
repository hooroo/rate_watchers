require 'rate_watchers/robot'

module RateWatchers
  RSpec.describe Robot do

    subject(:robot) do
      Robot.new
    end

    describe '#run' do

      it 'works' do
        robot.run
      end
    end

  end
end
