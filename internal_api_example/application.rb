ExampleApplication.configure do
  config.middleware.use "InternalApiMiddleware"
  # OR
  config.middleware.insert_before 0, "InternalApiMiddleware"
  # OR
  config.middleware.insert_after 10, "InternalApiMiddleware"
end
