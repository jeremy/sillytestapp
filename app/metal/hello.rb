class Hello < Rails::Rack::Metal
  HELLO = [200, { "Content-Type" => "text/html" }, ["Hello World!"]]
  NOT_FOUND = [404, {}, []]

  def call(env)
    if env["PATH_INFO"] =~ /^\/hello$/
      HELLO
    else
      NOT_FOUND
    end
  end
end
