require 'test_helper'

class PantryItemTest < ActiveSupport::TestCase

  def setup
    @pantry_item = PantryItem.new(amount: "1 gal")
  end
end
