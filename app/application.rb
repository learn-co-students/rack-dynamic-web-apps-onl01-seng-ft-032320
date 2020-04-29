class Application

  def call(env)
  
    # resp.write "Hello, World"
    # resp.finish
    return [ 200, {'Content-Type' => 'text/html'}, slot_response]
  end

  def slot_response
    resp = Rack::Response.new
    # num_1 = Kernel.rand(20)
    # num_2 = Kernel.rand(20)
    # num_3 = Kernel.rand(20)
    num_1 = 2 
    num_2 = 2 
    num_3 = 2
    
    if num_1 == num_2 && num_2 == num_3 
      resp.write "You Win"
    else 
      resp.write "You Lose"
    end
  end

end
