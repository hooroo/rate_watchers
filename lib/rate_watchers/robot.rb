class Robot

  def initialize(api_clinet: HoorooApiClient.new, writer: CsvWriter.new)
    @api_clinet = api_clinet
    @writer = writer
  end

  def run
    results = api_clinet.get_offers
    writer.write results
  end

  private

  attr_reader :api_clinet, :writer

end
