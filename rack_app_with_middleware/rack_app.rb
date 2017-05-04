class RackApp
  def call(env)
    response = "<p>Hello, Tunecore!</p>"
    [200, {'Content-Type' => 'text/html'}, [response]]
  end
end
