app = Rack::Builder.new do
  #use MyMiddleware you could add custom middle ware
  map "/" do
    use Rack::Lint # or you can add rack provided for only specific routes
    run Proc.new { [200, {"Content-Type" => "text/plain"}, ["Hello, Tunecore!"]] }
  end

  map "/velvet_raindrops" do
    use Rack::Lint # or you can add rack provided for only specific routes
    run Proc.new { [200, {"Content-Type" => "text/plain"}, ["Hello, Velvet Raindrops!"]] }
  end
end

 run app
