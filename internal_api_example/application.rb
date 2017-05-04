ExampleApplication.configure do
  internal_api_routes = ["/example"]
  config.middleware.use "InternalApiMiddleware", internal_api_routes
  # OR
  config.middleware.use "InternalApiMiddleware" do
    # do some config'ing
  end
  # OR
  config.middleware.insert_before 0, "InternalApiMiddleware", internal_api_routes
  # OR
  config.middleware.insert_after 10, "InternalApiMiddleware", internal_api_routes
end
