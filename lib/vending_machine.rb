require 'csv'
class Vendingmachine
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @products = products
    @change = change
  end

  def all_products_and_quantities
    @products
  end
end
