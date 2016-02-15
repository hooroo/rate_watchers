require 'virtus'
require 'rate_watchers/promotion'

class Rate
  include Virtus.model

  attribute :property_id, Integer
  attribute :name, String
  attribute :lowest_cost_offer_name, String
  attribute :promotion, Promotion
  attribute :result_position, Integer
end
