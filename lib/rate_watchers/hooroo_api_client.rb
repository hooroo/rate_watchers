require 'typhoeus'
require 'date'
require 'json'
require 'rate_watchers/rate'

class HoorooApiClient

  def get_rates
    rates = get_raw_rates
    rates.map do |rate|
      Rate.new(rate)
    end
  end

  private

  def get_raw_rates
    response = Typhoeus.get('https://hotel.qantas.com.au/api/v1/search.json',
      params: {
        adults: '2',
        checkIn: today,
        checkOut: tomorrow,
        location: 'Melbourne CBD, VIC, Australia'
      },
      headers: {
        'User-Agent' => 'Hooroo Rate Watchers Bot'
      }
    )

    JSON.parse(response.body)['results']
  end

  def today
    Date.today.strftime('%Y-%m-%d')
  end

  def tomorrow
    (Date.today + 1).strftime('%Y-%m-%d')
  end

end
