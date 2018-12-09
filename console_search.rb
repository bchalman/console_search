require 'rest-client'

query = ARGV[0]
response = RestClient.get 'https://www.bing.com/search', {params: {q: query}}

puts "Response code: #{response.code}"
puts "Response cookies: #{response.cookies}"
puts "Response headers: #{response.headers}"
puts "Response body: #{response.body}"
