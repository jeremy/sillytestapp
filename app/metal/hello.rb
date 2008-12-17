require 'singleton'

class Hello
  include Singleton
  HELLO = [200, { "Content-Type" => "text/html" }, ["Hello World!"]]
  NOT_FOUND = [404, {}, []]

  def self.call(env)
    instance.call(env)
  end

  def call(env)
    if env["PATH_INFO"] =~ /^\/hello$/
      HELLO
    else
      NOT_FOUND
    end
  end
end
