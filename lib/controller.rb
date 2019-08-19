require_relative "vending_machine"
require_relative "view"
require_relative "cash"
require_relative "change"
require_relative "products"

class Controller
  def initialize(vending_machine)
    @vending_machine = vending_machine
    @view = View.new
  end

  def list
    all_products = @vending_machine.all_products_and_quantities
  end
end
