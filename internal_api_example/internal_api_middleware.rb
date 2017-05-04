class InternalApiMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    request = Rack::Request.new(env)
    if authorized_request?(request)
      status, headers, body = @app.call(env)
      encrypt_header(@decrypted_token, headers)
      [status, headers, body]
    else
      [401, headers, ["Access Denied"]]
    end
  end

  private

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
