require 'virtus'

class Promotion
  include Virtus.model

  attribute :code, String
  attribute :campaign_code, String
  attribute :sash_text, String
end
