class Friend
  def greeting(*name)
    if name.empty?
      return "Hello!"
    else
      return "Hello, #{name[0]}!"
    end
  end
end


f = Friend.new
f.greeting
f.greeting
