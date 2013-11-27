require 'rubygems'
require 'bundler/setup'

require_relative 'lib/user_comparer'

user1 = UserComparer::User.new('genechatham')
user2 = UserComparer::User.new('tsijohn')
puts "#{user1.username}'s follower count: #{user1.followers}"
puts "#{user2.username}'s follower count: #{user2.followers}"
comparer = UserComparer::Comparer.new(user1, user2)



puts "And the user with the most followers is: #{comparer.compare_followers}"


puts "#{user1.username}'s friend count: #{user1.friends}"
puts "#{user2.username}'s friend count: #{user2.friends}"
puts "And the user with the most friends is: #{comparer.compare_friends}"
puts "#{user1.username}'s tweet count: #{user1.tweets}"
puts "#{user2.username}'s tweet count: #{user2.tweets}"
puts "And the user with the most tweets is: #{comparer.compare_tweets}"
puts "#{user1.username}'s last tweet was at #{user1.lastTweetTime} and said: #{user1.lastTweetText}"
puts "#{user2.username}'s last tweet was at #{user2.lastTweetTime} and said: #{user2.lastTweetText}"

