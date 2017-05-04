class MyMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, body = @app.call(env)
    headers["X-Custom-Header"] = "1234567890"
    [status, headers, body]
  end
end
