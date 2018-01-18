require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "Did-You"
  config.consumer_secret     = "Think-It"
  config.access_token        = "Would-Be"
  config.access_token_secret = "So Easy?"
end

puts"Welcome to the manual part of me!"
puts
puts "Enter number of tweets"
count = gets.to_i
if(count<1)
	puts "Please enter a valid number of tweets :P"
end
for i in 1..count
	puts "Enter your tweet no. "+i.to_s
	enteredTweet = gets.to_s
	puts "Enter Delay for this tweet (in seconds)"
	sleepTime = gets.to_i
	sleep sleepTime
	if(count==1)
		puts "Your tweet has been posted by me after "+sleepTime.to_s+" seconds"
	elsif (count>1)
		puts "Your tweet no. "+i.to_s+" has been posted by me after "+sleepTime.to_s+" seconds"		
	end
	client.update(enteredTweet)
end
puts
puts "***Bot authored by Divyansh Kulshreshtha***"

