require 'virtus'

class Promotion
  include Virtus.model
  include Virtus.value_object

  values do
    attribute :code, String
    attribute :campaign_code, String
    attribute :sash_text, String
  end

end
