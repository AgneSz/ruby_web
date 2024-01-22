class App
  def call(env)
    headers = {
      'Content-Type' => 'text/html'
    }
    
    # Since File.read returns the HTML contents, we need to wrap the response_html into square brackets, as rack response expects an Array
    #response = ['<h1>Hello World!</h1>']
    response_html = File.read 'views/index.html'
    
    # [200, headers, response]
    [200, headers, [response_html]]
  end
end
