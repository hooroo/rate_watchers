class Robot

  def initialize(api_clinet: HoorooApiClient.new, writer: NullWriter.new)
    @api_clinet = api_clinet
    @writer = writer
  end

  def run
    results = api_clinet.get_rates
    writer.write(results)
  end

  private

  attr_reader :api_clinet, :writer

end


class NullWriter
  def write(results)
  end
end
