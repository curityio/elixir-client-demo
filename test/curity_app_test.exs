defmodule CurityAppTest do
  use ExUnit.Case

  test "Get token from Curity" do
    IO.puts "Getting token from Curity using Client Credentials..."
    
    response = CurityApp.authorize()
    token = Jason.decode!(response.token.access_token)
    
    IO.inspect(token, syntax_colors: [number: :blue, string: :magenta])
  end
end