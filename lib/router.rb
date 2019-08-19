class Router
  def initialize(controller)
    @controller = controller
    @running    = true
  end

  def run
    puts "Welcome to Cleo's Vending Machine!"
    puts "           --           "

    while @running
      display_products
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end

  private

  def choose_a_product(action)
    case action
    when 1 then @products.all.to_a[1]
    when 2 then @products.all.to_a[2]
    when 3 then @products.all.to_a[3]
    when 4 then @products.all.to_a[4]
    when 5 then @products.all.to_a[5]
    when 6 then @products.all.to_a[6]
    when 7 then @products.all.to_a[7]
    when 8 then @products.all.to_a[8]
    when 9 then @products.all.to_a[9]
    else
      puts "Please select an item from the list!"
    end
  end

  def stop
    @running = false
  end

  def display_products
    puts ""
    puts "What do you want to do next?"
    puts "1 - List all recipes"
    puts "2 - Create a new recipe"
    puts "3 - Destroy a recipe"
    puts "4 - Import recipes from LetsCookFrench"
    puts "5 - Mark a recipe as complete"
    puts "6 - Stop and exit the program"
  end
end
