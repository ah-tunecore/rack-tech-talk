require_relative "rack_app"
require_relative "my_middleware"

use MyMiddleware
run RackApp.new
