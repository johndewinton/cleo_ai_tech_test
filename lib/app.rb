require_relative 'vending_machine'
require_relative 'controller'
require_relative 'router'

csv_file = File.join(__dir__, 'products.csv')
vending_machine  = Vending_machine.new(csv_file)
controller = Controller.new(vending_machine)

router = Router.new(controller)

# Start the app
router.run
