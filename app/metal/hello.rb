class HelloMetal
  HELLO = [200, { "Content-Type" => "text/html" }, ["Hello World!"]]
  NOT_FOUND = [404, {}, []]

  PATH_INFO = 'PATH_INFO'.freeze
  MATCH = '/hello'.freeze

  def call(env)
    if env[PATH_INFO] == MATCH
      HELLO
    else
      NOT_FOUND
    end
  end
end

Hello = HelloMetal.new
