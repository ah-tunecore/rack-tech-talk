class InternalApiMiddleware
  def initialize(app, routes)
    @app    = app
    @routes = routes
  end

  def call(env)
    request = Rack::Request.new(env)
    if protected_route?(request) && authorized_request?(request)
      status, headers, body = @app.call(env)
      encrypt_header(@decrypted_token, headers)
      [status, headers, body]
    else
      [401, headers, ["Access Denied"]]
    end
  end

  private

  def protected_route?(request)
    @routes.include?(request.path)
  end

  def authorized_request?(request)
    @decrypted_token = "0987654321"
    true # do things here to decrypt the custom header in the request and validate
  end

  def encrypt_auth_header(token, headers)
    @encrypted_token         = "1234567890"
    headers["Authorization"] = "Token token = #{encrypted_token}"

    headers
  end
end
