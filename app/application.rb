class Application

  def call(env)
    resp = Rack::Response.new
    # resp.write "Hello, World"
    # resp.finish
    num_1 = Kernel.rand(3)
    num_2 = Kernel.rand(3)
    num_3 = Kernel.rand(3)
    
    if num_1 == num_2 && num_2 == num_3 
      resp.write "You Win"
      return [ 200, {'Content-Type' => 'text/html'}, ['You Win']]
    else 
      resp.write "You Lose"
      return [ 200, {'Content-Type' => 'text/html'}, ['You Lose']]
    end
    
  end

end
