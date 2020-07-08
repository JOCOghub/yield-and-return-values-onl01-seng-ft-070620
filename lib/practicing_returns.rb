require 'pry'

def hello(hello)
  i = 0
  while i < hello.length
    binding.pry
    yield(hello[i])
    i += 1
  end
end


hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
