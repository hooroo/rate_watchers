require 'typhoeus'
require 'date'
require 'json'
require 'rate_watchers/rate'

class HoorooApiClient

  def get_rates
    response = get_raw_rates
    rates = JSON.parse(response.body)['results']
    rates.map do |rate|
      Rate.new(rate)
    end
  end

  private

  def get_raw_rates
    Typhoeus.get('https://hotel.qantas.com.au/api/v1/search.json',
      params: {
        adults: '2',
        checkIn: today,
        checkOut: tomorrow,
        location: 'Melbourne CBD, VIC, Australia'
      }
    )
  end

  def today
    Date.today.strftime('%Y-%m-%d')
  end

  def tomorrow
    (Date.today + 1).strftime('%Y-%m-%d')
  end

end
