require 'twitter'
require 'rubygems'
require 'json'

puts "Welcome to the automative part of me!"
puts
puts "Enter your twitter data in \"tweetData.json\" , save it. Press enter when done"
confirmed = gets

puts "Enter time delay for each tweet (in seconds)"
delayTime = gets.to_i
json_file = File.read('tweetData.json')
parsed_file = JSON.parse(json_file)

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = parsed_file['config']['consumer_key']
  config.consumer_secret     = parsed_file['config']['consumer_secret']
  config.access_token        = parsed_file['config']['access_token']
  config.access_token_secret = parsed_file['config']['access_token_secret']
end

enteredTweets = parsed_file['Entered_Tweets']

enteredTweets.each do |tweetCount|
  		client.update(tweetCount)
  		sleep(delayTime)
end
puts "Your all the tweets have been posted!"
puts 
puts "***Bot authored by Divyansh Kulshreshtha***"
